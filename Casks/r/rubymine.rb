cask "rubymine" do
  arch arm: "-aarch64"

  version "2026.2,262.8665.308"
  sha256 arm:   "ae0b243cc28bb603e97526db10d25c13883be55cea7963cbcf1a17ab3967ebb9",
         intel: "49c469a6cc76e6a37ba32d2e337ec13d7c624a0793857897052df2dd111c1268"

  url "https://download.jetbrains.com/ruby/RubyMine-#{version.csv.first}#{arch}.dmg"
  name "RubyMine"
  desc "Ruby on Rails IDE"
  homepage "https://www.jetbrains.com/ruby/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RM&latest=true&type=release"
    strategy :json do |json|
      json["RM"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "RubyMine.app"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)

  command_wrapper "rubymine.wrapper.sh",
                  target:  "rubymine",
                  content: <<~EOS
                    #!/bin/sh
                    open -na "RubyMine.app" --args "$@"
                  EOS

  zap trash: [
    "~/Library/Application Support/RubyMine#{version.major_minor}",
    "~/Library/Caches/RubyMine#{version.major_minor}",
    "~/Library/Logs/RubyMine#{version.major_minor}",
    "~/Library/Preferences/RubyMine#{version.major_minor}",
  ]
end

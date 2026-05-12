cask "rubymine" do
  arch arm: "-aarch64"

  version "2026.1.1,261.23567.142"
  sha256 arm:   "50f9c44a8b810b1e7d7b69fc8a74df7becd20a440c1765dea0dc3cdb92d32ae5",
         intel: "43f5ba3dede8eaac1d1d09b6cf86e77a7c847bb0eb5b09e8bf733e24bf1b4b4a"

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
  shimscript = "#{staged_path}/rubymine.wrapper.sh"
  binary shimscript, target: "rubymine"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      open -na "RubyMine.app" --args "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/RubyMine#{version.major_minor}",
    "~/Library/Caches/RubyMine#{version.major_minor}",
    "~/Library/Logs/RubyMine#{version.major_minor}",
    "~/Library/Preferences/RubyMine#{version.major_minor}",
  ]
end

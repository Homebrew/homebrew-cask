cask "rubymine" do
  arch arm: "-aarch64"

  version "2026.1.4,261.26222.67"
  sha256 arm:   "e30127c1c3d1b70a74c3178f50c88ba30eac3318abc2775131d9892fc2c187d9",
         intel: "04ba36c1e2092bc81001c32d02211333b14c761c3d6a81481a1e58aa3bf793bb"

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

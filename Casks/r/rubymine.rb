cask "rubymine" do
  arch arm: "-aarch64"

  version "2026.3.0.1,263.7307.350"
  sha256 arm:   "b4025788dd9eb0fe227444d56590c80661456f18fb4a79047a1dffef0dca9f53",
         intel: "83f87ef239cce33055a69369c4d9ecb1de92137b89dd880087027cafc24ba0a2"

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
  command_wrapper "rubymine",
                  executable: "/usr/bin/open",
                  args:       ["-na", "RubyMine.app", "--args"]

  uninstall launchctl: "application.com.jetbrains.app.daemon.*",
            quit:      "com.jetbrains.rubymine"

  zap trash: [
    "~/Library/Application Support/RubyMine#{version.major_minor}",
    "~/Library/Caches/RubyMine#{version.major_minor}",
    "~/Library/Logs/RubyMine#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.rubymine.plist",
    "~/Library/Preferences/RubyMine#{version.major_minor}",
  ]
end

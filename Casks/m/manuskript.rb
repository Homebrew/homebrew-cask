cask "manuskript" do
  version "0.16.1"
  sha256 "f67f3f44fee26259c04eb2df24b7a85b71c9963be1fe93d5c24e738af4a2d2af"

  url "https://github.com/olivierkes/manuskript/releases/download/#{version.major_minor_patch}/manuskript-#{version}-osx.dmg",
      verified: "github.com/olivierkes/manuskript/"
  name "Manuskript"
  desc "Tool for writers"
  homepage "https://www.theologeek.ch/manuskript/"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^manuskript[._-]v?(\d+(?:\.\d+)+)[._-]osx\.(?:dmg|pkg|zip)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  app "manuskript.app"

  zap trash: [
    "~/Library/Application Support/manuskript",
    "~/Library/Preferences/ch.theologeek.www.manuskript.plist",
    "~/Library/Preferences/com.manuskript.manuskript.plist",
    "~/Library/Saved Application State/ch.theologeek.manuskript.savedState",
  ]
end

cask "opensesame" do
  version "4.0.24"
  sha256 "8b55cbba3350afe254c978127c98b7ac2562221b36531065bb21b4ce42037e1b"

  url "https://github.com/open-cogsci/OpenSesame/releases/download/release%2F#{version}/opensesame_#{version}-py311-macos-x64-1.dmg",
      verified: "github.com/open-cogsci/OpenSesame/"
  name "OpenSesame"
  desc "Graphical experiment builder for the social sciences"
  homepage "https://osdoc.cogsci.nl/"

  livecheck do
    url :url
    regex(/opensesame[._-]v?(\d+(?:\.\d+)+)[._-].*\.dmg/i)
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

  app "OpenSesame.app"

  zap trash: [
    "~/.opensesame",
    "~/Library/Preferences/com.cogscinl.default.plist",
  ]

  caveats do
    requires_rosetta
  end
end

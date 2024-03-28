cask "gramps" do
  arch arm: "Arm", intel: "Intel"

  version "5.2.0,1"
  sha256 arm:   "af0162b9f6105c130e922187a9d0902b1c6a7544c68b7b30964f985c12f568a5",
         intel: "b5ec07f94d388b97d286a7a84eb7bfe32dcaf5c741b802caf146f4d81fbfc7e3"

  url "https://github.com/gramps-project/gramps/releases/download/v#{version.csv.first}/Gramps-#{arch}-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "github.com/gramps-project/gramps/"
  name "Gramps"
  desc "Genealogy software"
  homepage "https://gramps-project.org/blog/"

  livecheck do
    url :url
    regex(/^Gramps[._-]#{arch}[._-]v?(\d+(?:.\d+)+)[._-](\d+)\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          "#{match[1]},#{match[2]}"
        end
      end.flatten
    end
  end

  app "Gramps.app"

  zap trash: [
    "~/Library/Application Support/gramps",
    "~/Library/Preferences/org.gramps-project.gramps.plist",
    "~/Library/Saved Application State/org.gramps-project.gramps.savedState",
  ]
end

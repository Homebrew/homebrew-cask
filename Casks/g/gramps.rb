cask "gramps" do
  arch arm: "Arm", intel: "Intel"

  version "6.0.1,2"
  sha256 arm:   "3b83a876fc9110f81818b9ff040026c9c02e0e171c0b2861c691df01b6ab6909",
         intel: "7d4a72ae4b9c7d0c72b0fb63a5cd09ce397c9c825eb52fe8e7d8c95c4b285d69"

  url "https://github.com/gramps-project/gramps/releases/download/v#{version.csv.first}/Gramps-#{arch}-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "github.com/gramps-project/gramps/"
  name "Gramps"
  desc "Genealogy software"
  homepage "https://gramps-project.org/blog/"

  livecheck do
    url :url
    regex(/^Gramps[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)[._-](\d+)\.dmg$/i)
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

  depends_on macos: ">= :high_sierra"

  app "Gramps.app"

  zap trash: [
    "~/Library/Application Support/gramps",
    "~/Library/Preferences/org.gramps-project.gramps.plist",
    "~/Library/Saved Application State/org.gramps-project.gramps.savedState",
  ]
end

cask "gramps" do
  arch arm: "Arm", intel: "Intel"

  version "6.0.8,1"
  sha256 arm:   "8465bbb6a3dbf23ca7a49cebd121db0d1490ee39a8d3c545161324dd2edc0848",
         intel: "5c2698ab9e684b6ae05fea7b27cf6edbeb05ac6d6ccaadad00365b5c4ee19254"

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

  depends_on macos: ">= :big_sur"

  app "Gramps.app"

  zap trash: [
    "~/Library/Application Support/gramps",
    "~/Library/Preferences/org.gramps-project.gramps.plist",
    "~/Library/Saved Application State/org.gramps-project.gramps.savedState",
  ]
end

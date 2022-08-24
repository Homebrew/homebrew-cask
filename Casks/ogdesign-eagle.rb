cask "ogdesign-eagle" do
  arch arm: "M1-"

  version "3.0,11"
  sha256 arm:   "33bd5b36f299384feae533a0ed056cfbd52ae9a8ef4141f079686ed479de04ed",
         intel: "54f7beba085bac4fcea5d4ed47a612d71b1cc0cf5833f95072a402ad7ff4758f"

  url "https://r2-app.eagle.cool/releases/Eagle-#{version.csv.first}-#{arch}build#{version.csv.second}.dmg"
  name "Eagle"
  desc "Organize all your reference images in one place"
  homepage "https://eagle.cool/macOS"

  livecheck do
    url "https://eagle.cool/check-for-update"
    regex(/Eagle[._-]v?(\d+(?:\.\d+)+)-#{arch}build(\d+(?:\.\d+)*)\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Eagle.app"

  zap trash: [
    "~/Library/Application Support/Eagle",
    "~/Library/Logs/Eagle",
    "~/Library/Preferences/tw.ogdesign.eagle.plist",
    "~/Library/Saved Application State/tw.ogdesign.eagle.savedState",
  ]
end

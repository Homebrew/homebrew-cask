cask "ogdesign-eagle" do
  arch arm: "arm64", intel: "x64"

  version "4.0,8"
  sha256 arm:   "534167089a59bf9959696ee540ac321566cef2cd12b21df20856e37c13f3ca4e",
         intel: "ecdc497fb9215a59e261c35438ade0a48b2dc552588d5fcf51b02ffdf7f8430f"

  url "https://r2-app.eagle.cool/releases/Eagle-#{version.csv.first}-#{arch}-build#{version.csv.second}.dmg"
  name "Eagle"
  desc "Organise all your reference images in one place"
  homepage "https://eagle.cool/"

  livecheck do
    url "https://eagle.cool/check-for-update"
    regex(/Eagle[._-]v?(\d+(?:\.\d+)+)-#{arch}[._-]?build(\d+(?:\.\d+)*)\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Eagle.app"

  zap trash: [
    "~/Library/Application Support/Eagle",
    "~/Library/Logs/Eagle",
    "~/Library/Preferences/tw.ogdesign.eagle.plist",
    "~/Library/Saved Application State/tw.ogdesign.eagle.savedState",
  ]
end

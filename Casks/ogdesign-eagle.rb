cask "ogdesign-eagle" do
  arch arm: "M1-"

  version "3.0,19"
  sha256 arm:   "8856a0e1156b69e5727ec8f167a4f824cc2ce9587dbb1a68397b58e7afa81bda",
         intel: "a2a0b9f9bc73a5d4bdb6444c28ef11a051d53df253450f977711d8dd3a821999"

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

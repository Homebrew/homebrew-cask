cask "akvis-airbrush" do
  version "9.6"
  sha256 :no_check

  url "https://akvis-dl.sfo2.cdn.digitaloceanspaces.com/akvis-airbrush-app.dmg",
      verified: "akvis-dl.sfo2.cdn.digitaloceanspaces.com/"
  name "AKVIS AirBrush"
  desc "Turns photos into airbrush-style artwork"
  homepage "https://akvis.com/en/airbrush/index.php"

  livecheck do
    url "https://akvis.com/en/airbrush/index.php"
    regex(/AirBrush (\d+(?:\.\d+)+)/i)
    strategy :page_match
  end

  depends_on macos: :catalina

  app "AKVIS AirBrush.app"

  zap trash: [
    "~/Library/Caches/com.akvis.AirBrush",
    "~/Library/HTTPStorages/com.akvis.AirBrush",
    "~/Library/Preferences/com.akvis.AirBrush.plist",
    "~/Library/Saved Application State/com.akvis.AirBrush.savedState",
  ]
end

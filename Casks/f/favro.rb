cask "favro" do
  version "1.0.124"
  sha256 "7d2f607636567ceeca2410bb61d722c7942ba4ccb3108dda5224aa1566dec68c"

  url "https://download.favro.com/FavroDesktop/macOS/x64/Favro-#{version}.dmg"
  name "Favro"
  desc "Collaborative planning app"
  homepage "https://www.favro.com/"

  livecheck do
    url "https://download.favro.com/FavroDesktop/macOS/x64/Latest.json"
    regex(/Favro[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Favro.app"

  zap trash: [
    "~/Library/Application Support/Favro",
    "~/Library/Logs/Favro",
    "~/Library/Preferences/com.favro.desktop-app.plist",
    "~/Library/Saved Application State/com.favro.desktop-app.savedState",
  ]
end

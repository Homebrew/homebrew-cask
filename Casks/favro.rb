cask "favro" do
  version "1.0.67"
  sha256 "151199b695216c3e00a123da519506d57ac0097df24e8d44322f2c3a71c43cc7"

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

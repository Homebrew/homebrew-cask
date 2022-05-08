cask "favro" do
  version "1.0.91"
  sha256 "d8980bd8dfe36ab259db8f6b91fc37d0b9444344973cf02a56de2597bdf501f1"

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

cask "favro" do
  version "1.0.95"
  sha256 "36f9dcf6d3b12374784183e09b906ed29437c9bed6bf590235a355f329192e9d"

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

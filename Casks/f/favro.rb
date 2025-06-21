cask "favro" do
  version "1.0.167"
  sha256 "909576b1332007fec3aa033af6ea6bea8a6b4f2825a38ddb2c72d37556b244fe"

  url "https://download.favro.com/FavroDesktop/macOS/x64/Favro-#{version}.dmg"
  name "Favro"
  desc "Collaborative planning app"
  homepage "https://www.favro.com/"

  livecheck do
    url "https://download.favro.com/FavroDesktop/macOS/x64/Latest.json"
    strategy :json do |json|
      json["VersionString"]
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Favro.app"

  zap trash: [
    "~/Library/Application Support/Favro",
    "~/Library/Logs/Favro",
    "~/Library/Preferences/com.favro.desktop-app.plist",
    "~/Library/Saved Application State/com.favro.desktop-app.savedState",
  ]
end

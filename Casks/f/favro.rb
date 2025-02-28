cask "favro" do
  version "1.0.164"
  sha256 "32d2f54f775b096828ad3b8206319f63f1a7b56ba8a772840b1ab3e4ca79f0cd"

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

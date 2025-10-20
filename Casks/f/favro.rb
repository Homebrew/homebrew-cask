cask "favro" do
  version "1.0.185"
  sha256 "73bbef57897f731042e660d88dc00bc0df7569fe06539f5aca083dcb401f90d5"

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

  depends_on macos: ">= :monterey"

  app "Favro.app"

  zap trash: [
    "~/Library/Application Support/Favro",
    "~/Library/Logs/Favro",
    "~/Library/Preferences/com.favro.desktop-app.plist",
    "~/Library/Saved Application State/com.favro.desktop-app.savedState",
  ]
end

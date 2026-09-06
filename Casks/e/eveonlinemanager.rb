cask "eveonlinemanager" do
  version "1.2.0"
  sha256 "5a54422b97e36aa589d8caa5d10bc29190f86e00f0d186fb67864b71960fe09a"

  url "https://github.com/jordan-thirkle/EVEOnlineManager/releases/download/v#{version}/EVEOnlineManager-#{version}.dmg",
      verified: "github.com/jordan-thirkle/EVEOnlineManager/"
  name "EVE Online Manager"
  desc "Performance monitor, optimizer, and character companion for EVE Online on Mac"
  homepage "https://github.com/jordan-thirkle/EVEOnlineManager"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "EVEOnlineManager.app"

  zap trash: [
    "~/Library/Application Support/EVEOnlineManager",
    "~/Library/Preferences/com.eveonlinemanager.app.plist",
    "~/Library/Caches/com.eveonlinemanager.app",
  ]
end

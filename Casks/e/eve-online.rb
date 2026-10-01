cask "eve-online" do
  version "1.17.0"
  sha256 "dca26493d3e65cb0b523e3542708f439a2dc0f3d040d5d30efe207284d213427"

  url "https://launcher.ccpgames.com/eve-online/release/darwin/universal/eve-online-darwin-universal-#{version}.zip"
  name "EVE Online"
  desc "Launcher for the space MMO game EVE Online"
  homepage "https://www.eveonline.com/"

  livecheck do
    url "https://launcher.ccpgames.com/eve-online/release/darwin/universal/latest.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "eve-online.app"

  zap trash: [
    "~/Library/Application Support/CCP/EVE",
    "~/Library/Application Support/EVE Online",
    "~/Library/Caches/CCP/EVE",
    "~/Library/Logs/EVE Online",
    "~/Library/Preferences/com.ccpgames.EVE.plist",
  ]
end

cask "eve-online" do
  version "1.17.1"
  sha256 "60bd52699050e9f46047fc90ab91fe212b6c5e6385469d90f1b0efb5c53265c0"

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

cask "eve-online" do
  version "1.16.1"
  sha256 "5029082cd6d77a565c166572e206d1400d7e0ee14c9c34beb8ba21a2236d69f2"

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

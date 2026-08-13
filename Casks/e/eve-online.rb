cask "eve-online" do
  version "1.16.0"
  sha256 "7c6cb0d0f6c1a6597d53a60b6a3b5a42fc55e4bd6701ec06c6b4b04a065633e6"

  # CCP Games rebranded as Fenris Creations in May 2026, but
  # upstream URLs and data paths still use the former name.

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

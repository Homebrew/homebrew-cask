cask "browseros-neo" do
  version "0.49.5"
  sha256 "bc42ce8a9f3e833e0f9677ce209a7e5e04937f78c8eb77fed9c8749b19681621"

  url "https://cdn.browseros.com/releases/browserclaw/#{version}/macos/BrowserOS_neo_v#{version}_universal.dmg"
  name "BrowserOS neo"
  desc "Browser for agents"
  homepage "https://browseros.com/"

  livecheck do
    url "https://cdn.browseros.com/appcast-claw.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "BrowserOS neo.app"

  zap trash: [
    "~/Library/Application Support/BrowserClaw",
    "~/Library/Caches/BrowserClaw",
    "~/Library/Caches/com.browseros.BrowserClaw",
    "~/Library/HTTPStorages/com.browseros.BrowserClaw",
    "~/Library/Preferences/com.browseros.BrowserClaw.plist",
    "~/Library/Saved Application State/com.browseros.BrowserClaw.savedState",
  ]
end

cask "luna-display" do
  version "5.3.8.4999"
  sha256 "71a05fdfad47ce6fbd2be5dd4b95f192a4ddff0b80d1e4536ba12ccb91a0604f"

  url "https://downloads.astropad.com/luna/mac/LunaDisplay-#{version}.dmg"
  name "Luna Display"
  desc "Turns an iPad or second device into an external display"
  homepage "https://astropad.com/getting-started/luna-display/"

  livecheck do
    url "https://downloads.astropad.com/luna/mac/latest"
    regex(/LunaDisplay-(\d+(?:\.\d+)+)\.dmg/i)
    strategy :header_match
  end

  depends_on macos: :catalina

  app "Luna Display.app"

  zap trash: [
    "~/Library/Caches/com.astro-hq.LunaDisplayMac",
    "~/Library/HTTPStorages/com.astro-hq.LunaDisplayMac",
    "~/Library/Preferences/com.astro-hq.LunaDisplayMac.plist",
    "~/Library/Saved Application State/com.astro-hq.LunaDisplayMac.savedState",
  ]
end

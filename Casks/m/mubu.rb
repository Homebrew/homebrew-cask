cask "mubu" do
  version "3.7.2"
  sha256 "f1a200b1e2dd3d67e08bdfde3a08ad6fdde0b18566e75d535f10b73c4e454301"

  url "https://mubu-assets.tos-cn-shanghai.volces.com/client/Mubu-#{version}.dmg",
      verified: "mubu-assets.tos-cn-shanghai.volces.com/client/"
  name "Mubu"
  desc "Outline note taking and management app"
  homepage "https://mubu.com/"

  livecheck do
    url "https://mubu.com/apps"
    regex(/href=.*?Mubu[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true

  app "幕布.app"

  zap trash: [
    "~/Library/Application Support/幕布",
    "~/Library/Preferences/com.mubu.desktop.plist",
    "~/Library/Saved Application State/com.mubu.desktop.savedState",
  ]
end

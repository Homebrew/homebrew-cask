cask "mubu" do
  version "3.7.3"
  sha256 "aa9b42e992670167d8070ece716b7d0c387b9835c58c6e10b215f8782c1bcdb0"

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

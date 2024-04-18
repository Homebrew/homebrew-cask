cask "mubu" do
  version "4.0.2"
  sha256 "f78590040b39d5b0de9be0fd518d5631fee3fa4a88684b2fd318168f32714de1"

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

cask "mubu" do
  version "3.6.0"
  sha256 "1a8b2f7c6dc032099fb653201fd2f1b3dac2daeb08631deef8665993d69d2055"

  url "https://lf1-ttcdn-tos.pstatp.com/obj/mubu-assets/client/Mubu-#{version}.dmg",
      verified: "lf1-ttcdn-tos.pstatp.com/obj/mubu-assets/"
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

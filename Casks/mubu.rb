cask "mubu" do
  version "3.3.0"
  sha256 "d5d1a2ec403d1039ed792e710385d6bd659e897aecfea3778fd4c0d9bf91ae6d"

  url "https://lf6-ttcdn-tos.pstatp.com/obj/mubu-img/client/Mubu-#{version}.dmg",
      verified: "lf6-ttcdn-tos.pstatp.com/obj/mubu-img/"
  name "Mubu"
  desc "Outline note taking and management app"
  homepage "https://mubu.com/"

  livecheck do
    url "https://mubu.com/apps"
    strategy :page_match
    regex(/Mubu-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "幕布.app"

  zap trash: [
    "~/Library/Application Support/幕布",
    "~/Library/Preferences/com.mubu.desktop.plist",
    "~/Library/Saved Application State/com.mubu.desktop.savedState",
  ]
end

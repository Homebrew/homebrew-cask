cask "mubu" do
  version "2.2.7"
  sha256 "75ce9778f5e2a4cab5ae896f1f44b47ddf1dae627e8e9f6a73ce457fe46c90f7"

  url "https://lf6-ttcdn-tos.pstatp.com/obj/mubu-img/client/Mubu-#{version}.dmg",
      verified: "lf6-ttcdn-tos.pstatp.com/obj/mubu-img/"
  name "Mubu"
  desc "Outline note taking and management app"
  homepage "https://mubu.com/"

  app "幕布.app"

  zap trash: [
    "~/Library/Application Support/幕布",
    "~/Library/Preferences/com.mubu.desktop.plist",
    "~/Library/Saved Application State/com.mubu.desktop.savedState",
  ]
end

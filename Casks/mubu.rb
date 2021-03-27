cask "mubu" do
  version "3.1.0"
  sha256 "e58225bbc93c6e005cd8ee3dd978d7a891b8e8c14329cce53e59d6a3b151e531"

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

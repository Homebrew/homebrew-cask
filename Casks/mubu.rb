cask "mubu" do
  version "3.0.1"
  sha256 "3468cc53a871b89a33b9c0753d76bbe135c6ef6a58ad6752660ad99b71384882"

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

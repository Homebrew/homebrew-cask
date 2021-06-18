cask "mubu" do
  version "3.4.0"
  sha256 "453a4edd6f0a981357f3a3cb51d1915b1e640acf23d275919996e7478130df0d"

  url "https://lf6-ttcdn-tos.pstatp.com/obj/mubu-img/client/Mubu-#{version}.dmg",
      verified: "lf6-ttcdn-tos.pstatp.com/obj/mubu-img/"
  name "Mubu"
  desc "Outline note taking and management app"
  homepage "https://mubu.com/"

  livecheck do
    url "https://mubu.com/apps"
    regex(%r{href=.*?/Mubu[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "幕布.app"

  zap trash: [
    "~/Library/Application Support/幕布",
    "~/Library/Preferences/com.mubu.desktop.plist",
    "~/Library/Saved Application State/com.mubu.desktop.savedState",
  ]
end

cask "opera@developer" do
  version "126.0.5742.0"
  sha256 "cb4ba64cedceb99f206dbbee81e86afd2e247e39eac7260b244d4ee698a0de0d"

  url "https://get.geo.opera.com/pub/opera-developer/#{version}/mac/Opera_Developer_#{version}_Setup.dmg"
  name "Opera Developer"
  desc "Web browser"
  homepage "https://www.opera.com/browsers/opera/developer"

  livecheck do
    url "https://get.geo.opera.com/pub/opera-developer/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Opera Developer.app"

  zap trash: [
    "~/Library/Application Support/com.operasoftware.OperaDeveloper",
    "~/Library/Caches/com.operasoftware.Installer.OperaDeveloper",
    "~/Library/Caches/com.operasoftware.OperaDeveloper",
    "~/Library/Cookies/com.operasoftware.OperaDeveloper.binarycookies",
    "~/Library/HTTPStorages/com.operasoftware.Installer.OperaDeveloper",
    "~/Library/Preferences/com.operasoftware.OperaDeveloper.plist",
    "~/Library/Saved Application State/com.operasoftware.OperaDeveloper.savedState",
  ]
end

cask "opal-app" do
  version "1.5.3"
  sha256 "678cbc7c20364dd4c94346e0573a1fbfa0b68a121c1116f35054b348de8054bf"

  url "https://downloads.opal.so/mac/Opal%20#{version}.dmg"
  name "Opal"
  desc "Screen time app"
  homepage "https://www.opal.so/"

  livecheck do
    url "https://downloads.opal.so/mac/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Opal.app"

  uninstall quit: "com.withopal.opalmacos"

  zap trash: [
    "~/Library/Application Support/com.withopal.opalmacos",
    "~/Library/Caches/com.crashlytics.data/com.withopal.opalmacos",
    "~/Library/Caches/com.withopal.opalmacos",
    "~/Library/Group Containers/*.com.withopal.AppleScreentimeKit",
    "~/Library/Group Containers/*.com.withopal.opal",
    "~/Library/HTTPStorages/com.withopal.opalmacos",
    "~/Library/HTTPStorages/com.withopal.opalmacos.binarycookies",
    "~/Library/Preferences/com.withopal.opalmacos.plist",
    "~/Library/Preferences/com.withopal.opalmacos.revenuecat.etags.plist",
    "~/Library/Preferences/group.com.withopal.opalmacos.firebase.plist",
    "~/Library/WebKit/com.withopal.opalmacos",
  ]
end

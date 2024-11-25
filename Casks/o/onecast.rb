cask "onecast" do
  version "2.2"
  sha256 "e406f94376b6ce0eb7877f7c4515d7ec947f2291c18f2b49f83e06632b3717cd"

  url "https://onecast.me/updates/release/OneCast-#{version}.dmg"
  name "OneCast"
  desc "Xbox remote play"
  homepage "https://www.onecast.me/"

  livecheck do
    url "https://www.onecast.me/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "OneCast.app"

  zap trash: [
    "~/Library/Caches/com.onecast.macos",
    "~/Library/HTTPStorages/com.onecast.macos",
    "~/Library/Preferences/com.onecast.macos.plist",
    "~/Library/WebKit/com.onecast.macos",
  ]
end

cask "sessionrestore" do
  version "2.3"
  sha256 "843f962d3f2dd5b301bea491ae541019e2882d1697f72a8900b429e2dd53aee9"

  url "https://sweetpproductions.com/products/sessionrestore/SessionRestore.dmg"
  appcast "https://sweetpproductions.com/products/sessionrestore/appcast.xml"
  name "SessionRestore"
  desc "Helps to keep numerous Safari tabs open forreading them later"
  homepage "https://sessionrestore.sweetpproductions.com/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "SessionRestore.app"

  zap trash: [
    "~/Library/Containers/com.sweetpproductions.SessionRestore",
    "~/Library/Containers/com.sweetpproductions.SessionRestore.Extension",
    "~/Library/Group Containers/U928YCMMNK.com.sweetpproductions.SessionRestore",
  ]
end

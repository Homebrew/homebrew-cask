cask "sessionrestore" do
  version "2.1.7"
  sha256 "f3071a69aa5a1abe24003ee9d0329fb2de8257e36e7ed79bf99ab21e9d4f5e70"

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

cask "sessionrestore" do
  version "2.2.1"
  sha256 "01eae56608d5242824b53d555ba7f48c9a54dc67f3507e34e19d67cd58699092"

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

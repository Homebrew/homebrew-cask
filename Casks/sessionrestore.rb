cask "sessionrestore" do
  version "2.3"
  sha256 :no_check

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

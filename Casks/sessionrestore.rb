cask "sessionrestore" do
  version "2.2"
  sha256 "c4f80e173e4016a6113deefe4acf9607e807d7ccf8b065e8bc0bd89b1ccde42a"

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

cask "sessionrestore" do
  version "2.8.2"
  sha256 :no_check

  url "https://sweetpproductions.com/products/sessionrestore/SessionRestore.dmg"
  name "SessionRestore"
  desc "Helps to keep numerous Safari tabs open for reading them later"
  homepage "https://sessionrestore.sweetpproductions.com/"

  livecheck do
    url "https://sweetpproductions.com/products/sessionrestore/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SessionRestore.app"

  zap trash: [
    "~/Library/Containers/com.sweetpproductions.SessionRestore",
    "~/Library/Containers/com.sweetpproductions.SessionRestore.Extension",
    "~/Library/Group Containers/U928YCMMNK.com.sweetpproductions.SessionRestore",
  ]
end

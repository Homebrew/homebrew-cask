cask "sessionrestore" do
  version "4.0.1"
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
  depends_on macos: :ventura

  app "SessionRestore.app"

  uninstall quit: "com.sweetpproductions.SessionRestore"

  zap trash: [
    "~/Library/Application Scripts/com.sweetpproductions.SessionRestore*",
    "~/Library/Application Scripts/U928YCMMNK.com.sweetpproductions.SessionRestore",
    "~/Library/Containers/com.sweetpproductions.SessionRestore",
    "~/Library/Containers/com.sweetpproductions.SessionRestore.Extension",
    "~/Library/Group Containers/U928YCMMNK.com.sweetpproductions.SessionRestore",
  ]
end

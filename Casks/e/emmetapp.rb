cask "emmetapp" do
  version "1.5.1"
  sha256 :no_check

  url "https://s3.amazonaws.com/emmet.app/emmetapp.dmg",
      verified: "s3.amazonaws.com/emmet.app/"
  name "emmetapp"
  desc "Tiling and stacking window manager and window resizing tool"
  homepage "https://emmetapp.com/"

  livecheck do
    url "https://s3.amazonaws.com/emmet.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "emmetapp.app"

  zap trash: [
    "~/Library/Application Scripts/com.speedyhill.emmetapp-LaunchAtLoginHelper",
    "~/Library/Containers/com.speedyhill.emmetapp-LaunchAtLoginHelper",
    "~/Library/Preferences/com.speedyhill.emmetapp.plist",
  ]
end

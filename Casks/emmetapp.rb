cask "emmetapp" do
  version "1.0.0"
  sha256 :no_check

  url "https://s3.amazonaws.com/emmet.app/emmetapp.dmg",
      verified: "s3.amazonaws.com/emmet.app/"
  name "emmetapp"
  desc "Window manager you dream about"
  homepage "https://emmetapp.com/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "emmetapp.app"

  zap trash: [
    "~/Library/Application\ Scripts/com.speedyhill.emmetapp-LaunchAtLoginHelper",
    "~/Library/Containers/com.speedyhill.emmetapp-LaunchAtLoginHelper",
    "~/Library/Group Containers/2BUA8C4S2C.com.agilebits",
    "~/Library/Preferences/com.speedyhill.emmetapp.plist",
  ]
end

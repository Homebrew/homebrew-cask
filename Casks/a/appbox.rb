cask "appbox" do
  version "4.1.0"
  sha256 "eac5efb75115cb9340b1cbe9933519a0a4e69565f2f72df39f9b98caaa4e8cec"

  url "https://github.com/getappbox/AppBox-iOSAppsWirelessInstallation/releases/download/#{version}/AppBox.app.zip"
  name "AppBox"
  desc "iOS app distribution tool"
  homepage "https://getappbox.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "AppBox.app"

  uninstall quit: "com.developerinsider.AppBox"

  zap trash: [
    "~/Library/Application Support/com.developerinsider.AppBox",
    "~/Library/Caches/com.developerinsider.AppBox",
    "~/Library/Containers/com.developerinsider.AppBox",
    "~/Library/HTTPStorages/com.developerinsider.AppBox",
    "~/Library/Preferences/com.developerinsider.AppBox.plist",
  ]
end

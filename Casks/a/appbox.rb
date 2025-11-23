cask "appbox" do
  version "3.6.0"
  sha256 "e978af3b776a3efd8cc6cef4cb69729173b4277dbec291eb6710545f550ade72"

  url "https://github.com/getappbox/AppBox-iOSAppsWirelessInstallation/releases/download/#{version}/AppBox.app.zip",
      verified: "github.com/getappbox/AppBox-iOSAppsWirelessInstallation/"
  name "AppBox"
  desc "iOS app distribution tool"
  homepage "https://getappbox.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "AppBox.app"

  zap trash: [
    "~/Library/Application Support/com.developerinsider.AppBox",
    "~/Library/Containers/com.developerinsider.AppBox",
    "~/Library/Preferences/com.developerinsider.AppBox.plist",
  ]
end

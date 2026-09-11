cask "appbox" do
  version "4.0.0"
  sha256 "30f346b0dc685b3ad8ce870213974618f0997d5d18081ca41f03bef0b8789aad"

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

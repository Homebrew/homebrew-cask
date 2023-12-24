cask "logitech-camera-settings" do
  version "3.0.23"
  sha256 "ff8ce22aab2ef7a4e63044585e34497cffd8edb0cc077902ca0da3dbb40f5ea2"

  url "https://download01.logi.com/web/ftp/pub/techsupport/cameras/Webcams/LogiCameraSettings_#{version}.pkg"
  name "Logitech Camera Settings"
  desc "Provides access to camera controls"
  homepage "https://support.logi.com/hc/en-us/articles/360049055854"

  livecheck do
    url "https://support.logi.com/api/v2/help_center/en-us/articles.json?label_names=webcontent=productdownload,websoftware=9bf6fc93-8e0b-11e9-a62b-cb4c7fb3c2e2"
    regex(%r{/LogiCameraSettings[._-]?(\d+(?:\.\d+)+)\.pkg}i)
  end

  depends_on macos: ">= :high_sierra"

  pkg "LogiCameraSettings_#{version}.pkg"

  uninstall signal:     ["TERM", "com.logitech.vc.LogiVCCoreService"],
            login_item: "Background Replace",
            pkgutil:    [
              "com.logitech.vc.LogiVCCoreService.launchd.pkg",
              "com.logitech.vc.LogiVCCoreService.app.pkg",
              "com.logitech.vc.CameraSettings.pkg",
            ]

  zap trash: [
    "~/Library/Application Support/Logitech/com.logitech.vc.camerasettings",
    "~/Library/Logs/LogiCameraSettings",
    "~/Library/Preferences/com.logitech.CameraSettingsApp2.0.plist",
  ]
end

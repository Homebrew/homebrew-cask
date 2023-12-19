cask "adobe-air" do
  version "50.2.4.2"
  sha256 :no_check

  url "https://airsdk.harman.com/assets/downloads/AdobeAIR.dmg"
  name "Adobe AIR"
  desc "Framework used in the development of applications and games"
  homepage "https://airsdk.harman.com/"

  livecheck do
    url "https://airsdk.harman.com/api/config-settings/download"
    regex(/"versionName"\s*:\s*"(\d+(?:\.\d+)+)/i)
  end

  installer script: {
    executable: "Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer",
    args:       ["-silent"],
    sudo:       true,
  }

  uninstall script: {
              executable: "Adobe AIR Installer.app/Contents/MacOS/Adobe AIR Installer",
              args:       ["-uninstall"],
              sudo:       true,
            },
            rmdir:  [
              "/Applications/Adobe/Flash Player/AddIns",
              "/Applications/Adobe/Flash Player",
              "/Applications/Adobe",
            ]

  zap trash: [
        "~/Library/Application Support/Adobe/AIR",
        "~/Library/Caches/com.adobe.air.ApplicationInstaller",
      ],
      rmdir: "~/Library/Application Support/Adobe/"
end

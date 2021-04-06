cask "adobe-air" do
  version "32.0.0.125"
  sha256 "d6abb9c4538f9dc9ca3d7f86629437fa52f5d7ee36ae2a3903adfb42d59fd4ad"

  url "https://airdownload.adobe.com/air/mac/download/#{version.major_minor}/AdobeAIR.dmg"
  appcast "https://helpx.adobe.com/au/air/kb/archived-air-sdk-version.html"
  name "Adobe AIR"
  homepage "https://get.adobe.com/air/"

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

cask "ddpm" do
  version "2.0.0.0015"
  sha256 "454f6705e666cc626a16c040da41e43e26a861532206894bdf658bea6ac9d27b"

  url "https://www.delldisplaymanagermac.com/DDPM/DDPMv#{version}.zip",
      verified: "delldisplaymanagermac.com/"
  name "DDPM"
  name "Dell Display and Peripheral Manager"
  desc "Monitors and peripherals manager"
  homepage "https://dell.com/"

  livecheck do
    url "https://www.delldisplaymanagermac.com/DDPM/ddpm.json"
    strategy :json do |json|
      json.dig("versionTable", "*", "originVersion")
    end
  end

  pkg "DDPM_Installer.pkg"
  binary "/Applications/DDPM/DDPM.app/Contents/MacOS/DDPM"

  uninstall pkgutil: "Qisda.pkg.DDPM",
            delete:  "/Applications/DDPM/SW_VER.json",
            rmdir:   "/Applications/DDPM"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/qisda.autolaunchddpmhelper.sfl*",
    "~/Library/Caches/Qisda.DDPM",
    "~/Library/Containers/Qisda.AutoLaunchDDPMHelper",
    "~/Library/HTTPStorages/Qisda.DDPM",
    "~/Library/HTTPStorages/Qisda.DDPM.binarycookies",
    "~/Library/Preferences/Qisda.DDPM.plist",
  ]
end

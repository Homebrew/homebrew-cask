cask "ddpm" do
  version "1.1.1.0038"
  sha256 "922371db71c878c1568ed92a6edeb100cc25efd37ebb5e046d8d9ed8bfdb3ed4"

  url "https://dl.dell.com/FOLDER10485258M/1/DDPMv#{version}.zip"
  name "DDPM"
  name "Dell Display and Peripheral Manager"
  desc "Monitors and peripherals manager"
  homepage "https://dell.com/"

  livecheck do
    url "https://www.dell.com/support/home/en-us/drivers/driversdetails?driverid=63t8x"
    regex(/ddpmv(\d+(?:\.\d+)+)\.zip/i)
  end

  pkg "DDPMv#{version}/DDPM_Installer.pkg"
  binary "#{appdir}/DDPM/DDPM.app/Contents/MacOS/DDPM"

  uninstall pkgutil: "Qisda.pkg.DDPM",
            delete:  "#{appdir}/DDPM/SW_VER.json",
            rmdir:   "#{appdir}/DDPM"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/qisda.autolaunchddpmhelper.sfl2",
    "~/Library/Caches/Qisda.DDPM",
    "~/Library/Containers/Qisda.AutoLaunchDDPMHelper",
    "~/Library/HTTPStorages/Qisda.DDPM",
    "~/Library/HTTPStorages/Qisda.DDPM.binarycookies",
    "~/Library/Preferences/Qisda.DDPM.plist",
  ]
end

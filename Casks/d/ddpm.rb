cask "ddpm" do
  version "1.2.0.0052"
  sha256 "53faf376738a35a8f1af6f4ba48ea18986d885f032ca89911172f6e6e1b4c58b"

  url "https://dl.dell.com/FOLDER10656664M/1/DDPMv#{version}.zip"
  name "DDPM"
  name "Dell Display and Peripheral Manager"
  desc "Monitors and peripherals manager"
  homepage "https://dell.com/"

  livecheck do
    url "https://www.dell.com/support/home/en-us/drivers/driversdetails?driverid=3v8tw"
    regex(/ddpmv(\d+(?:\.\d+)+)\.zip/i)
  end

  pkg "DDPMv#{version}/DDPM_Installer.pkg"
  binary "/Applications/DDPM/DDPM.app/Contents/MacOS/DDPM"

  uninstall pkgutil: "Qisda.pkg.DDPM",
            delete:  "/Applications/DDPM/SW_VER.json",
            rmdir:   "/Applications/DDPM"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/qisda.autolaunchddpmhelper.sfl2",
    "~/Library/Caches/Qisda.DDPM",
    "~/Library/Containers/Qisda.AutoLaunchDDPMHelper",
    "~/Library/HTTPStorages/Qisda.DDPM",
    "~/Library/HTTPStorages/Qisda.DDPM.binarycookies",
    "~/Library/Preferences/Qisda.DDPM.plist",
  ]
end

cask "ddpm" do
  version "1.1.1.0017"
  sha256 "5e135f24041fe2be875bf50cd2983c02be29cf4bca697d24a052a28d129c4e0c"

  url "https://dl.dell.com/FOLDER10485258M/1/DDPMv#{version}.zip"
  name "DDPM"
  name "Dell Display and Peripheral Manager"
  desc "Monitors and peripherals manager"
  homepage "https://dell.com/"

  livecheck do
    url "https://www.dell.com/support/home/en-us/drivers/driversdetails?driverid=63t8x"
    regex(/ddpmv(\d+(?:\.\d+)+)\.zip/i)
  end

  pkg "DDPM_Installer.pkg"
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

cask "ddpm" do
  version "2.1.1.0007"
  sha256 "ad3a2d4d47266411b78fca6f206a0e74b861974dbeb7efd5fe75bab419e9da69"

  url "https://clientperipherals.dell.com/DDPM/Mac/Application/DDPMv#{version}.zip"
  name "DDPM"
  name "Dell Display and Peripheral Manager"
  desc "Monitors and peripherals manager"
  homepage "https://dell.com/"

  livecheck do
    url "https://clientperipherals.dell.com/DDPM/Mac/Application/ddpm.json"
    strategy :json do |json|
      json["versionTable"].map { |_, entry| entry["originVersion"] }
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

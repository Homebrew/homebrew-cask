cask "ddpm" do
  version "2.1.2.0007"
  sha256 "4ee48985ae1ccbc91b3db4a605005731d5107ffd9f9621cc5cfe4dc64ac67161"

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

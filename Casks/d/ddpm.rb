cask "ddpm" do
  version "1.3.2.0015"
  sha256 "d015a871642bdb65391d6dba23c2dc1c7e86058d91083afe7312601046417ca4"

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

  pkg "DDPMv#{version}/DDPM_Installer.pkg"
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

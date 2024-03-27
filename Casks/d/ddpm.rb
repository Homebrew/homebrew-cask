cask "ddpm" do
  version "1.3.0.0029"
  sha256 "f86a3346663c817147fa8db263f5a5157f221b133dd15da556a828fc17dd066d"

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

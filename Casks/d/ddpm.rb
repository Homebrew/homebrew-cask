cask "ddpm" do
  version "2.3.0.1005"
  sha256 "ba5112785ed2f99ef8fd91e64a6afbc683c6140815f63aef2d4da979a79a1dc9"

  url "https://clientperipherals.dell.com/DDPM/Mac/Application/DDPMv#{version}.zip",
      user_agent: :browser
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

  depends_on :macos

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

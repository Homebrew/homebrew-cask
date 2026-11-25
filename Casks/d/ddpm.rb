cask "ddpm" do
  version "2.3.0.2004"
  sha256 "65cf087c4a67a589895c1ceaf683ae1088ab0f177f3837b2152c0932eae38b4d"

  url "https://clientperipherals.dell.com/DDPM/Mac/Application/DDPMv#{version}.zip",
      user_agent: :browser
  name "DDPM"
  name "Dell Display and Peripheral Manager"
  desc "Monitors and peripherals manager"
  homepage "https://dell.com/"

  livecheck do
    url "https://clientperipherals.dell.com/DDPM/Mac/Application/ddpm.json",
        user_agent: :browser
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

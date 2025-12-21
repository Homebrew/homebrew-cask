cask "jetdrive-toolbox" do
  version "4.5"
  sha256 "2a52a2d24d22a120c737e5d9a13eceadd7be59751185a0821ef84fdf6f5605f8"

  url "https://cdn.transcend-info.com/files/special/JetDriveToolbox_v#{version}.zip",
      user_agent: :browser
  name "JetDrive Toolbox"
  desc "Helper for Transcend SSDs and expansion cards"
  homepage "https://www.transcend-info.com/Support/Software-181/"

  livecheck do
    url "https://www.transcend-info.com/Software/1151/",
        user_agent: :browser
    strategy :header_match
  end

  auto_updates true
  depends_on arch: :arm64

  pkg "JetDriveToolbox_v#{version}.pkg"

  uninstall launchctl: "com.transcend.JetDriveToolbox-v2",
            quit:      "com.transcend.JetDriveToolbox-v2",
            pkgutil:   "com.transcend.pkg.JetDriveM1",
            delete:    "/Applications/JetDriveToolbox.app"

  zap trash: [
    "~/Library/Caches/com.transcend.JetDriveToolbox-v2",
    "~/Library/HTTPStorages/com.transcend.JetDriveToolbox-v2",
    "~/Library/Preferences/com.transcend.JetDriveToolbox-v2.plist",
  ]
end

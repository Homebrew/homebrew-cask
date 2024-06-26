cask "openemu@experimental" do
  on_high_sierra :or_older do
    version "2.0.9.1"
    sha256 "62c44e823fef65c583cbf5e6f84faa03618d713f45610f73bc23fb34cbf64762"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave :or_newer do
    version "2.4.1"
    sha256 "57b6f2b6005119efecb566e8cf611e12f1d0171dcd1f96797a0e9b4c33d3cdb4"
  end

  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}-experimental.zip",
      verified: "github.com/OpenEmu/OpenEmu/"
  name "OpenEmu"
  desc "Retro video game emulation"
  homepage "https://openemu.org/"

  deprecate! date: "2025-05-01", because: :unsigned

  auto_updates true
  conflicts_with cask: "openemu"

  app "OpenEmu.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.openemu.openemu.sfl*",
    "~/Library/Application Support/OpenEmu",
    "~/Library/Application Support/org.openemu.OEXPCCAgent.Agents",
    "~/Library/Caches/OpenEmu",
    "~/Library/Caches/org.openemu.OpenEmu",
    "~/Library/Cookies/org.openemu.OpenEmu.binarycookies",
    "~/Library/HTTPStorages/org.openemu.OpenEmu.binarycookies",
    "~/Library/Preferences/org.openemu.*.plist",
    "~/Library/Saved Application State/org.openemu.OpenEmu.savedState",
  ]
end

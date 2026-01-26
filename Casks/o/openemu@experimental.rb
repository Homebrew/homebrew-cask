cask "openemu@experimental" do
  version "2.4.1"
  sha256 "57b6f2b6005119efecb566e8cf611e12f1d0171dcd1f96797a0e9b4c33d3cdb4"

  url "https://github.com/OpenEmu/OpenEmu/releases/download/v#{version}/OpenEmu_#{version}-experimental.zip",
      verified: "github.com/OpenEmu/OpenEmu/"
  name "OpenEmu"
  desc "Retro video game emulation"
  homepage "https://openemu.org/"

  livecheck do
    url "https://raw.github.com/OpenEmu/OpenEmu-Update/master/appcast-experimental.xml"
    strategy :sparkle
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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

  caveats do
    requires_rosetta
  end
end

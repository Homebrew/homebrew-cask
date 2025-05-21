cask "free-download-manager" do
  version "6.28"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://files2.freedownloadmanager.org/#{version.major}/latest/fdm.dmg"
  name "Free Download Manager"
  desc "Download accelerator and organiser"
  homepage "https://www.freedownloadmanager.org/"

  livecheck do
    url "https://www.freedownloadmanager.org/download-fdm-for-mac.htm"
    regex(/>\s*FDM\s*v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Free Download Manager.app"

  uninstall launchctl: [
              "org.freedownloadmanager.fdm#{version.major}",
              "org.freedownloadmanager.fdm#{version.major}.helper",
            ],
            quit:      [
              "org.freedownloadmanager.fdm#{version.major}",
              "org.freedownloadmanager.fdm#{version.major}.launcher",
            ]

  zap trash: [
        "~/Library/Application Support/Free Download Manager",
        "~/Library/Application Support/Softdeluxe/Free Download Manager",
        "~/Library/Caches/org.freedownloadmanager.fdm#{version.major}",
        "~/Library/Caches/Softdeluxe/Free Download Manager",
        "~/Library/Preferences/com.softdeluxe.Free Download Manager.plist",
        "~/Library/Preferences/org.freedownloadmanager.fdm#{version.major}.plist",
        "~/Library/Saved Application State/org.freedownloadmanager.fdm#{version.major}.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/Softdeluxe",
        "~/Library/Caches/Softdeluxe",
      ]

  caveats do
    requires_rosetta
  end
end

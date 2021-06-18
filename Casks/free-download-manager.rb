cask "free-download-manager" do
  version "6.14.2"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://dn3.freedownloadmanager.org/#{version.major}/latest/fdm.dmg"
  name "Free Download Manager"
  desc "Download accelerator and organizer"
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
    "~/Library/Caches/org.freedownloadmanager.fdm#{version.major}",
    "~/Library/Preferences/org.freedownloadmanager.fdm#{version.major}.plist",
    "~/Library/Saved Application State/org.freedownloadmanager.fdm#{version.major}.savedState",
  ]
end

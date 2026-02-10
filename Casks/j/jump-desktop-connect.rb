cask "jump-desktop-connect" do
  version "7.1.52"
  sha256 "63546be7660a5542e041ff17f20e650915babab2e36b2c29fad16117998fbb84"

  url "https://mirror.jumpdesktop.com/downloads/connect/JumpDesktopConnect-#{version}.dmg"
  name "Jump Desktop Connect"
  desc "Remote desktop app"
  homepage "https://jumpdesktop.com/connect/"

  livecheck do
    url "https://mirror.jumpdesktop.com/downloads/connect/connect-mac.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  pkg ".jdc.sparkle_guided.pkg"

  uninstall launchctl: [
              "application.com.p5sys.jump.connect.*",
              "com.p5sys.jump.connect.agent",
              "com.p5sys.jump.connect.service",
            ],
            signal:    ["QUIT", "com.p5sys.jump.connect"],
            pkgutil:   "com.p5sys.jump.connect",
            delete:    "/Library/Application Support/Jump Desktop/Connect/sharedconfig.plist",
            rmdir:     [
              "/Library/Application Support/Jump Desktop",
              "/Library/Application Support/Jump Desktop/Connect",
            ]

  zap trash: [
        "~/Library/Application Support/com.p5sys.jump.connect",
        "~/Library/Caches/com.p5sys.jump.connect",
        "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.p5sys.jump.connect",
        "~/Library/Caches/Jump Desktop/jump.connect",
        "~/Library/HTTPStorages/com.p5sys.jump.connect",
        "~/Library/Preferences/com.p5sys.jump.connect.plist",
      ],
      rmdir: "~/Library/Caches/Jump Desktop"
end

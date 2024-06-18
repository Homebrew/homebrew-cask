cask "jump-desktop-connect" do
  version "6.10.27,61027"
  sha256 :no_check

  url "https://mirror.jumpdesktop.com/downloads/connect/JumpDesktopConnect.dmg"
  name "Jump Desktop Connect"
  desc "Remote desktop app"
  homepage "https://jumpdesktop.com/connect/"

  livecheck do
    url :url
    strategy :extract_plist
  end

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
              "/Library/Application Support/Jump Desktop/Connect/",
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

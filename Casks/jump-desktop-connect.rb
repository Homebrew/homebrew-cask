cask "jump-desktop-connect" do
  version "6.9.22,60922"
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

  uninstall signal:    ["QUIT", "com.p5sys.jump.connect"],
            pkgutil:   "com.p5sys.jump.connect",
            launchctl: [
              "application.com.p5sys.jump.connect.*",
              "com.p5sys.jump.connect.service",
              "com.p5sys.jump.connect.agent",
            ],
            delete:    "/Library/Application Support/Jump Desktop/Connect/sharedconfig.plist",
            rmdir:     [
              "/Library/Application Support/Jump Desktop/Connect/",
              "/Library/Application Support/Jump Desktop",
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

cask "jump-desktop-connect" do
  version "6.7.69,60769"
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

  uninstall pkgutil:   "com.p5sys.jump.connect",
            launchctl: [
              "com.p5sys.jump.connect.service",
              "com.p5sys.jump.connect.agent",
              "com.p5sys.jump.connect.*",
            ],
            quit:      "com.p5sys.jump.connect",
            signal:    [["QUIT", "com.p5sys.jump.connect"]]

  zap trash: [
    "/Library/Application Support/Jump Desktop/Connect/sharedconfig.plist",
    "~/Library/Application Support/com.p5sys.jump.connect",
    "~/Library/Preferences/com.p5sys.jump.connect.plist",
    "~/Library/HTTPStorages/com.p5sys.jump.connect",
    "~/Library/Caches/Jump Desktop/jump.connect",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.p5sys.jump.connect",
    "~/Library/Caches/com.p5sys.jump.connect",
  ],
      rmdir: [
        "/Library/Application Support/Jump Desktop",
        "~/Library/Caches/Jump Desktop",
      ]  
end

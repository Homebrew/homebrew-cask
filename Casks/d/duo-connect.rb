cask "duo-connect" do
  version "2.0.4"
  sha256 "17f6a70e2150278e90303be9a7c5693297edcb296d2882ecd7a9e8271c33cdcf"

  url "https://dl.duosecurity.com/DuoConnect-#{version}.pkg",
      verified: "dl.duosecurity.com/"
  name "DuoConnect"
  desc "Access your organisation’s SSH servers"
  homepage "https://guide.duo.com/duoconnect"

  livecheck do
    url "https://duo.com/docs/checksums#duoconnect-for-macos"
    regex(%r{href=.*?/DuoConnect[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  pkg "DuoConnect-#{version}.pkg"

  uninstall launchctl: [
              "com.duo.connect.tcp",
              "com.duo.connect.tcp.plist",
              "com.duo.connect.tun",
              "com.duo.connect.tun.plist",
            ],
            pkgutil:   "com.duo.connect.bin"

  zap trash: [
        "~/.duoconnect",
        "~/Liibrary/Logs/Duo/Duoconnect",
      ],
      rmdir: "~/Library/Logs/Duo"

  caveats do
    requires_rosetta
  end
end

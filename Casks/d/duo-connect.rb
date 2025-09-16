cask "duo-connect" do
  version "2.0.8"
  sha256 "5c90184c25028e16c1029090aba4d238e7f018cb5a0b00de96441b0257a3a87f"

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

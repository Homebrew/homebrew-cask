cask "duo-connect" do
  version "2.0.5"
  sha256 "5b580fb2721212cab63479c53a3ecf56cee0339cb58aafcc899ceb502229989a"

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

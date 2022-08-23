cask "duo-connect" do
  version "2.0.3"
  sha256 "e49703db4d199c0a1b0ce3f5906f3998b56a96b552d870ecdfd694c368fc32f0"

  url "https://dl.duosecurity.com/DuoConnect-#{version}.pkg",
      verified: "dl.duosecurity.com/"
  name "DuoConnect"
  desc "Access your organization’s SSH servers"
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
end

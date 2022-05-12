cask "duo-connect" do
  version "2.0.2"
  sha256 "9b5b480c13186c5ce84c41cbb23179639cd5115e3e81a3a4b9d196a391ea119a"

  url "https://dl.duosecurity.com/DuoConnect-#{version}.pkg",
      verified: "dl.duosecurity.com/"
  name "DuoConnect"
  desc "Access your organization’s SSH servers"
  homepage "https://guide.duo.com/duoconnect"

  livecheck do
    url "https://duo.com/docs/checksums#duoconnect-for-macos"
    regex(%r{href=.*?/DuoConnect[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  depends_on macos: ">= :yosemite"

  pkg "DuoConnect-#{version}.pkg"

  uninstall pkgutil:   "com.duo.connect.bin",
            launchctl: [
              "com.duo.connect.tcp",
              "com.duo.connect.tun",
            ]
end

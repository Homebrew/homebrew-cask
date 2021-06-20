cask "openzfs" do
  if MacOS.version <= :yosemite
    version "2.0.1,316"
    sha256 "b7fc93ae63de5dc348d82b3a3e1b7acc0ea84c43f6f9f17a6c4e64e9fbbff849"
    pkg "OpenZFSonOsX-#{version.before_comma}-YOSEMITE-10.10.pkg"
  elsif MacOS.version <= :el_capitan
    version "2.0.1,315"
    sha256 "39ca712ce1b1e660659790ec32c4415460f66d2ce5d82cef0a5067a3193e2938"
    pkg "OpenZFSonOsX-#{version.before_comma}-EL.CAPITAN-10.11.pkg"
  elsif MacOS.version <= :sierra
    version "2.0.1,314"
    sha256 "d1096996a10bc7b8d06a7f037f93b22c45c4c79662ea7bf0a7bb3486e30e95cc"
    pkg "OpenZFSonOsX-#{version.before_comma}-Sierra-10.12.pkg"
  elsif MacOS.version <= :high_sierra
    version "2.0.1,313"
    sha256 "a1c956e60059329d940fea6b54a760be2a26963f41a57a9069be0a56fe796942"
    pkg "OpenZFSonOsX-#{version.before_comma}-High.Sierra-10.13.pkg"
  elsif MacOS.version <= :mojave
    version "2.0.1,312"
    sha256 "1ebfbea78a7d52ad63845a9203f1f9b6581f66b8733effe46962c925e2c526f4"
    pkg "OpenZFSonOsX-#{version.before_comma}-Mojave-10.14.pkg"
  elsif MacOS.version <= :catalina
    version "2.0.1,309"
    sha256 "ccdb70986d8f3786a96de0447c9cb55e3edcc455f4668af45e76fc8225810a1c"
    pkg "OpenZFSonOsX-#{version.before_comma}-Catalina-10.15.pkg"
  elsif Hardware::CPU.intel?
    version "2.0.1,310"
    sha256 "29e21e954d394fbed17b9df606d3183061ebc547500bb2e9dc460599b5c16015"
    pkg "OpenZFSonOsX-#{version.before_comma}-Big.Sur-11.pkg"
  else
    version "2.0.1,308"
    sha256 "bac99664fdfb632dd9b1c4dc2b922e33f81dc61720e14418b1e55b1175090a2e"
    pkg "OpenZFSonOsX-#{version.before_comma}-Big.Sur-11-arm64.pkg"
  end

  url "https://openzfsonosx.org/forum/download/file.php?id=#{version.after_comma}"
  name "OpenZFS on OS X"
  desc "ZFS driver and utilities"
  homepage "https://openzfsonosx.org/"

  livecheck do
    # url "https://openzfsonosx.org/wiki/Downloads"
    # regex(/href=["']?#v?(\d+(?:\.\d+)+(?:[._-]r\d+)?)["' >]/i)
    skip "Version comparison will always fail for now"
  end

  conflicts_with cask: "openzfs-dev"
  depends_on macos: ">= :yosemite"

  postflight do
    set_ownership "/usr/local/zfs"
  end

  uninstall_preflight do
    system "sudo", "/usr/local/zfs/bin/zpool", "export", "-af"
  end

  uninstall pkgutil:   "org.openzfsonosx.zfs",
            launchctl: [
              "org.openzfsonosx.InvariantDisks",
              "org.openzfsonosx.zconfigd",
              "org.openzfsonosx.zed",
              "org.openzfsonosx.zpool-import",
              "org.openzfsonosx.zpool-import-all",
            ]

  caveats do
    kext
  end
end

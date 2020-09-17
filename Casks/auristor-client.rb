cask "auristor-client" do
  version "0.197.1"

  if MacOS.version <= :high_sierra
    sha256 "21f74fa05f7601ad8e35e3a5e4b154dfae59347237fd07878f73b119dd78ff3d"
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.13/AuriStor-client-#{version}-HighSierra.dmg"
  elsif MacOS.version <= :mojave
    sha256 "442388eff95f5d251331a3af4caae939d6af81131a2ec867b982a2eb767a7f79"
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.14/Auristor-client-#{version}-Mojave.dmg"
  else
    sha256 "7b59e22c5f0b786dc30f64bc662e5a3a8b96f2a9af6d62d6bc27050481ac0c65"
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.15/Auristor-client-#{version}-Catalina.dmg"
  end

  name "AuriStor File System Client"
  homepage "https://www.auristor.com/"

  # Unusual case: The software will stop working, or is dangerous to run, on the next macOS release.
  depends_on macos: [
    :high_sierra,
    :mojave,
    :catalina,
  ]

  pkg "Auristor-Lite.pkg"

  uninstall pkgutil:   "com.auristor.yfs-*",
            launchctl: [
              "com.auristor.XPCHelper",
              "com.auristor.yfs-client",
            ],
            kext:      "com.auristor.filesystems.yfs"
end

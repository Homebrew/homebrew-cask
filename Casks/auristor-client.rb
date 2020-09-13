cask "auristor-client" do
  version "0.197.1"

  if MacOS.version <= :high_sierra
    sha256 "21f74fa05f7601ad8e35e3a5e4b154dfae59347237fd07878f73b119dd78ff3d"
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.13/AuriStor-client-#{version}-HighSierra.dmg"
  elsif MacOS.version <= :mojave
    sha256 "9b0ff041d5158ab63b95e2520a01c81a9e6535f06955ff1e0c18a0b635b4f553"
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

  if MacOS.version <= :high_sierra
    pkg "Auristor-Lite.pkg"
  elsif MacOS.version <= :mojave
    pkg "Auristor-Lite.pkg"
  elsif MacOS.version <= :catalina
    pkg "Auristor-Lite.pkg"
  else
    pkg "Auristor.pkg"
  end

  uninstall pkgutil:   "com.auristor.yfs-*",
            launchctl: [
              "com.auristor.XPCHelper",
              "com.auristor.yfs-client",
            ],
            kext:      "com.auristor.filesystems.yfs"
end

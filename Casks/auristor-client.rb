cask "auristor-client" do
  version "0.204"

  if MacOS.version <= :mojave
    sha256 "42f164514f6276003455eb3b104f5dfb5557403aeb979569a823dd3dc3e7ebd2"
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.14/AuriStor-client-#{version}-Mojave.dmg"
  elsif MacOS.version <= :catalina
    sha256 "08f8c5b96713c12127b798aa1154b02e5c29eadd931f3c483769322b35afd094"
    url "https://www.auristor.com/downloads/auristor/osx/macos-10.15/Auristor-client-#{version}-Catalina.dmg"
  else
    sha256 "c7d3f425e83afe20b35b913b278a3e149583764c0fbb9351e4e6da34053d4373"
    url "https://www.auristor.com/downloads/auristor/osx/macos-11.0/Auristor-client-#{version}-BigSur.dmg"
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

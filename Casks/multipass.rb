cask "multipass" do
  version "1.4.0"
  sha256 "ff34ce741367f77a9fc25f10ccb0a67c0bd4aa62328722a573454dd42fed6132"

  url "https://github.com/CanonicalLtd/multipass/releases/download/v#{version}/multipass-#{version}+mac-Darwin.pkg"
  appcast "https://github.com/CanonicalLtd/multipass/releases.atom"
  name "Multipass"
  homepage "https://github.com/CanonicalLtd/multipass/"

  depends_on macos: ">= :sierra"

  pkg "multipass-#{version} mac-Darwin.pkg"

  uninstall launchctl: "com.canonical.multipassd",
            pkgutil:   "com.canonical.multipass.*",
            delete:    [
              "/Applications/Multipass.app",
              "/usr/local/bin/multipass",
              "/usr/local/etc/bash_completion.d/multipass",
              "/var/root/Library/Caches/multipassd",
              "/Library/Application Support/com.canonical.multipass",
            ]

  zap trash: [
    "~/Library/Application Support/multipass",
    "~/Library/Application Support/multipass-gui",
    "~/Library/Preferences/multipass",
    "/var/root/Library/Application Support/multipassd",
    "/var/root/Library/Preferences/multipassd",
    "/Library/Logs/Multipass",
  ]
end

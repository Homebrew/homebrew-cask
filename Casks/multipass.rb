cask "multipass" do
  version "1.5.0"
  sha256 "1085217279fbb55f3a2c528deaba7c19b60073ae715c39dc83273262fea1a117"

  url "https://github.com/CanonicalLtd/multipass/releases/download/v#{version}/multipass-#{version}+mac-Darwin.pkg"
  name "Multipass"
  desc "Orchestrates virtual Ubuntu instances"
  homepage "https://github.com/CanonicalLtd/multipass/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  pkg "multipass-#{version}+mac-Darwin.pkg"

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

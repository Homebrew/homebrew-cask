cask "multipass" do
  version "1.6.2"
  sha256 "61ce3f9ff9c32555b583bfa2017501526eb53e68e570c11ae40f69fdc01d69d6"

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

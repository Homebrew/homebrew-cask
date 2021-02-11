cask "multipass" do
  version "1.6.1"
  sha256 "93db0b5199a1fc1f100bb34618ec2384ffa6b094aa118313591f97c6b57f3b2e"

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

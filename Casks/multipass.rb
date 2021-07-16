cask "multipass" do
  version "1.7.0"
  sha256 "a576100b495acbde4fcf7d4943af8d57c4fb9ee30fe8852daa0d4f7ce3a7ec7b"

  url "https://github.com/canonical/multipass/releases/download/v#{version}/multipass-#{version}+mac-Darwin.pkg"
  name "Multipass"
  desc "Orchestrates virtual Ubuntu instances"
  homepage "https://github.com/canonical/multipass/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

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

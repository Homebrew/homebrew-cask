cask "multipass" do
  version "1.12.0"
  sha256 "6695c81ac1ad003af01b1b8a25bf61917a1be12a6786c48df17ce2c416dcf6c1"

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
              "/Library/Application Support/com.canonical.multipass",
              "/Library/Logs/Multipass",
              "/usr/local/bin/multipass",
              "/usr/local/etc/bash_completion.d/multipass",
            ]

  zap trash: [
    "~/Library/Application Support/multipass",
    "~/Library/Application Support/multipass-gui",
    "~/Library/Preferences/multipass",
    "~/Library/LaunchAgents/com.canonical.multipass.gui.autostart.plist",
  ]
end

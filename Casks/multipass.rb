cask "multipass" do
  version "1.12.1"
  sha256 "388a23e8cff91ac90c7c28e8d6ff8a3bf36cf2ea6e0123beacb25eb7a3024281"

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
    "~/Library/LaunchAgents/com.canonical.multipass.gui.autostart.plist",
    "~/Library/Preferences/multipass",
  ]
end

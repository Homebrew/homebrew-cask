cask "multipass" do
  version "1.7.2"
  sha256 "767f6e600e9dfc218a2f5f8fe0693e0cfefa539d21ef8f8851f7b611b1b7b275"

  url "https://github.com/canonical/multipass/releases/download/v#{version}/multipass-#{version}+mac-Darwin.pkg"
  name "Multipass"
  desc "Orchestrates virtual Ubuntu instances"
  homepage "https://github.com/canonical/multipass/"

  livecheck do
    url "https://github.com/canonical/multipass/releases/"
    strategy :page_match
    regex(/multipass[._-]?(\d+(?:\.\d+)*)\+mac[._-]?Darwin\.pkg/i)
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
  ]
end

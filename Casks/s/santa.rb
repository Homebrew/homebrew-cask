cask "santa" do
  version "2025.1"
  sha256 "4e7fe15d582ddff8886d759ae39c8fb16b7b7edd64b55fdace27475d7cd70f7f"

  url "https://github.com/northpolesec/santa/releases/download/#{version}/santa-#{version}.dmg"
  name "Santa"
  desc "Binary authorization system"
  homepage "https://github.com/northpolesec/santa"

  pkg "santa-#{version}.pkg"

  uninstall launchctl: [
              "com.northpolesec.santa",
              "com.northpolesec.santa.bundleservice",
              "com.northpolesec.santa.metricservice",
              "com.northpolesec.santa.syncservice",
              "com.northpolesec.santad",
            ],
            kext:      "com.northpolesec.santa-driver",
            pkgutil:   "com.northpolesec.santa",
            delete:    [
              "/Applications/Santa.app",
              "/usr/local/bin/santactl",
            ]

  # No zap stanza required
end

cask "santa" do
  version "2025.3"
  sha256 "06a33253a015be318503523df054771786a2d71d99f5e679329f32968d808cc1"

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

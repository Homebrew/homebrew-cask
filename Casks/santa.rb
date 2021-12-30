cask "santa" do
  version "2021.8"
  sha256 "f27b5fcd3efdbc43fb7f1139f85175e74dc8ae5cf2afd48d3d89d0ba59aa9248"

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  name "Santa"
  desc "Binary authorization system"
  homepage "https://github.com/google/santa"

  pkg "santa-#{version}.pkg"

  uninstall delete:    [
    "/Applications/Santa.app",
    "/usr/local/bin/santactl",
  ],
            kext:      "com.google.santa-driver",
            launchctl: [
              "com.google.santa",
              "com.google.santa.bundleservice",
              "com.google.santa.metricservice",
              "com.google.santad",
            ],
            pkgutil:   "com.google.santa"

  caveats "For #{token} to use EndpointSecurity, it must be granted Full Disk Access under " \
          "System Preferences → Security & Privacy → Privacy"
end

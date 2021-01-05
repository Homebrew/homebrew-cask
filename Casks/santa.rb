cask "santa" do
  version "1.17"
  sha256 "eff538cda801983a7c1af170c43c6e2fd9a31c51b7c4857d31df6f9bb7c671a0"

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  appcast "https://github.com/google/santa/releases.atom"
  name "Santa"
  homepage "https://github.com/google/santa"

  pkg "santa-#{version}.pkg"

  uninstall delete:    "/usr/local/bin/santactl",
            kext:      "com.google.santa-driver",
            launchctl: [
              "com.google.santa",
              "com.google.santa.bundleservice",
              "com.google.santad",
            ],
            pkgutil:   "com.google.santa"

  caveats "For #{token} to use EndpointSecurity, it must be granted Full Disk Access under " \
          "System Preferences → Security & Privacy → Privacy"
end

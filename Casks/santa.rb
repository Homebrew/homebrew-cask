cask "santa" do
  version "1.15"
  sha256 "2b5c04e25105c52a9a7750f9aa138f2063ad42b6911c7ad9f8ab0e507a158530"

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

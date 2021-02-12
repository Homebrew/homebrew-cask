cask "santa" do
  version "2021.2"
  sha256 "bbd4bb501660ca85ad9fd268e36ab5e266a27cbd1e2f133bb2ef2d748705bd00"

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

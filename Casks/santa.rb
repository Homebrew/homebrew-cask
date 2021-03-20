cask "santa" do
  version "2021.3"
  sha256 "72478dd4e4688d9913431d12a056c6f31e414750a7b9815e44d5587c89fa148f"

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

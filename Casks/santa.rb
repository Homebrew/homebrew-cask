cask "santa" do
  version "2021.7"
  sha256 "7682a855aa2517011fe08eb5c1f420c1dbe2ab6ea3a732bbf915267fda203754"

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
              "com.google.santad",
            ],
            pkgutil:   "com.google.santa"

  caveats "For #{token} to use EndpointSecurity, it must be granted Full Disk Access under " \
          "System Preferences → Security & Privacy → Privacy"
end

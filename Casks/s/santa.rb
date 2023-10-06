cask "santa" do
  version "2023.8"
  sha256 "e63f5ea42520a38d6c736cbf153723b92b48760ab8c5835249aac12c52b1b99e"

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  name "Santa"
  desc "Binary authorization system"
  homepage "https://github.com/google/santa"

  livecheck do
    url :url
    strategy :github_latest
  end

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
              "com.google.santa.syncservice",
              "com.google.santad",
            ],
            pkgutil:   "com.google.santa"

  # No zap stanza required

  caveats "For #{token} to use EndpointSecurity, it must be granted Full Disk Access under " \
          "System Preferences → Security & Privacy → Privacy"
end

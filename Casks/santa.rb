cask "santa" do
  version "2022.10"
  sha256 "667564da72b0515bf0dc8097465e914ee701a10024847dc6a5bc8f5c113baf52"

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

  caveats "For #{token} to use EndpointSecurity, it must be granted Full Disk Access under " \
          "System Preferences → Security & Privacy → Privacy"
end

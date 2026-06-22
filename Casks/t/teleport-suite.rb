cask "teleport-suite" do
  version "18.9.0"
  sha256 "a474850bf22a869c4a09df17f0bf7ac93178ea7627c7217fff5082808b4a9887"

  url "https://cdn.teleport.dev/teleport-#{version}.pkg",
      verified: "cdn.teleport.dev/"
  name "Teleport"
  desc "Modern SSH server for teams managing distributed infrastructure"
  homepage "https://goteleport.com/"

  livecheck do
    url "https://goteleport.com/download/all-downloads/",
        user_agent: :browser
    regex(/teleport[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  conflicts_with cask: [
    "teleport-suite@16",
    "teleport-suite@17",
    "tsh",
  ]
  depends_on :macos

  pkg "teleport-#{version}.pkg"

  uninstall pkgutil: [
              "(.*).com.gravitational.teleport.tctl",
              "(.*).com.gravitational.teleport.tsh",
              "com.gravitational.teleport",
            ],
            delete:  [
              "/usr/local/bin/fdpass-teleport",
              "/usr/local/bin/tbot",
              "/usr/local/bin/tctl",
              "/usr/local/bin/teleport",
              "/usr/local/bin/tsh",
            ]

  zap trash: "~/.tsh"
end

cask "teleport-suite@16" do
  version "16.5.13"
  sha256 "d2b02d32a817c9fcc555e3a1a568d84eeb827f3ade5ce1c0d4cdeaf9de264e2f"

  url "https://cdn.teleport.dev/teleport-#{version}.pkg",
      verified: "cdn.teleport.dev/"
  name "Teleport"
  desc "Modern SSH server for teams managing distributed infrastructure"
  homepage "https://goteleport.com/"

  livecheck do
    url "https://goteleport.com/download/"
    regex(/teleport[._-]v?(16(?:\.\d+)+)\.pkg/i)
  end

  disable! date: "2025-10-01", because: :discontinued

  conflicts_with cask:    [
                   "teleport-suite",
                   "tsh",
                   "tsh@13",
                 ],
                 formula: [
                   "etsh",
                   "teleport",
                 ]

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

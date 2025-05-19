cask "teleport@16" do
  version "16.5.9"
  sha256 "3db8672e2c1b1b4b3b6fc2a4ce31bdaa0164ad944b35cc2d1384df42d1fe6732"

  url "https://cdn.teleport.dev/teleport-#{version}.pkg",
      verified: "cdn.teleport.dev/"
  name "Teleport"
  desc "Modern SSH server for teams managing distributed infrastructure"
  homepage "https://goteleport.com/"

  livecheck do
    url "https://goteleport.com/download/"
    regex(/teleport[._-]v?(16(?:\.\d+)+)\.pkg/i)
  end

  conflicts_with cask:    [
                   "teleport",
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

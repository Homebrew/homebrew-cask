cask "teleport-suite" do
  version "18.2.1"
  sha256 "b67d2b651200fc560d4b32929479dca659243c623cf230359f557695628a75a5"

  url "https://cdn.teleport.dev/teleport-#{version}.pkg",
      verified: "cdn.teleport.dev/"
  name "Teleport"
  desc "Modern SSH server for teams managing distributed infrastructure"
  homepage "https://goteleport.com/"

  livecheck do
    url "https://goteleport.com/download/"
    regex(/teleport[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  conflicts_with cask: [
    "teleport-suite@16",
    "tsh",
    "tsh@13",
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

cask "teleport-suite@17" do
  version "17.7.6"
  sha256 "866d19ec40a9331d48f70bdc86f803e48262765d350dea4748a39f9c32a911bd"

  url "https://cdn.teleport.dev/teleport-#{version}.pkg",
      verified: "cdn.teleport.dev/"
  name "Teleport"
  desc "Modern SSH server for teams managing distributed infrastructure"
  homepage "https://goteleport.com/"

  livecheck do
    url "https://goteleport.com/download/"
    regex(/teleport[._-]v?(17(?:\.\d+)+)\.pkg/i)
  end

  # Support window taken from https://goteleport.com/docs/upcoming-releases/
  disable! date: "2026-02-28", because: :discontinued

  conflicts_with cask: [
    "teleport-suite",
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

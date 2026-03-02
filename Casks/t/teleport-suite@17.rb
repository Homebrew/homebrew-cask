cask "teleport-suite@17" do
  version "17.7.19"
  sha256 "5ada804e1ace296e9665ed6d7c61a0297d12bb508e265096871a5e90458d16d0"

  url "https://cdn.teleport.dev/teleport-tools-#{version}.pkg",
      verified: "cdn.teleport.dev/"
  name "Teleport"
  desc "Modern SSH server for teams managing distributed infrastructure"
  homepage "https://goteleport.com/"

  livecheck do
    url "https://github.com/gravitational/teleport/"
    regex(/^v?(17(?:\.\d+)+)$/i)
  end

  # Support window taken from https://goteleport.com/docs/upcoming-releases/
  disable! date: "2026-08-01", because: :discontinued

  conflicts_with cask: [
    "teleport-suite",
    "teleport-suite@16",
    "tsh",
  ]

  pkg "teleport-tools-#{version}.pkg"

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

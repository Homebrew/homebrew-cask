cask "teleport-suite" do
  version "18.7.1"
  sha256 "e657a19f099edebb83f6db484704e6b712f80951807fbb98d7e5e102c679cab5"

  url "https://cdn.teleport.dev/teleport-tools-#{version}.pkg",
      verified: "cdn.teleport.dev/"
  name "Teleport"
  desc "Modern SSH server for teams managing distributed infrastructure"
  homepage "https://goteleport.com/"

  livecheck do
    url "https://github.com/gravitational/teleport/"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with cask: [
    "teleport-suite@16",
    "teleport-suite@17",
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

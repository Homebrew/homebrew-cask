cask "teleport-suite@17" do
  version "17.7.23"
  sha256 "3e0e14f05284ee15158f351befde08825f87a2358346635527c98cd2d84620af"

  url "https://cdn.teleport.dev/teleport-#{version}.pkg",
      verified: "cdn.teleport.dev/"
  name "Teleport"
  desc "Modern SSH server for teams managing distributed infrastructure"
  homepage "https://goteleport.com/"

  # 17.x versions are found in an array of JavaScript strings on the page.
  livecheck do
    url "https://goteleport.com/download/all-downloads/",
        user_agent: :browser
    regex(/["']v?(17(?:\.\d+)+)["']/i)
  end

  # Support window taken from https://goteleport.com/docs/upcoming-releases/
  disable! date: "2026-08-01", because: :discontinued

  conflicts_with cask: [
    "teleport-suite",
    "teleport-suite@16",
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

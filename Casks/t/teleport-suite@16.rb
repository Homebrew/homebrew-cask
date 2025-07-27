cask "teleport-suite@16" do
  version "16.5.14"
  sha256 "96b262f1587783904b2e66e8e387abd8f4b9bf6a49fd111a9d007ca92befd68d"

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

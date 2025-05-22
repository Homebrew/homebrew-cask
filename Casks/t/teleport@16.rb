cask "teleport@16" do
  version "16.5.10"
  sha256 "c6aaa51dc5dfafd02dd3fd2a15c19395aacf5dfa047673c4b6b35ff1e2dc6a91"

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

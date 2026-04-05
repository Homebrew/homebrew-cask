cask "fuse-t" do
  version "1.2.1"
  sha256 "77e0feca3d5a3dde5bd2683b1613fb52f23385381e41b9f47216dcc88644a346"

  url "https://github.com/macos-fuse-t/fuse-t/releases/download/#{version}/fuse-t-macos-installer-#{version}.pkg",
      verified: "github.com/macos-fuse-t/fuse-t/"
  name "FUSE-T"
  desc "Kext-less implementation of FUSE"
  homepage "https://www.fuse-t.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "fuse-t-macos-installer-#{version}.pkg"

  uninstall script:  {
              executable: "/Library/Application Support/fuse-t/uninstall.sh",
              input:      ["Y"],
              sudo:       true,
            },
            pkgutil: [
              "org.fuse-t.core.#{version}",
              "org.fuse-t.fskit.#{version}",
            ]

  # No zap stanza required
end

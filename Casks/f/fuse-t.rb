cask "fuse-t" do
  version "1.2.7"
  sha256 "6a29c747e61a86a405a189efc3de42812d73147135f93a1bb0624c1e7b90e654"

  url "https://github.com/macos-fuse-t/fuse-t/releases/download/#{version}/fuse-t-macos-installer-#{version}.pkg",
      verified: "github.com/macos-fuse-t/fuse-t/"
  name "FUSE-T"
  desc "Kext-less implementation of FUSE"
  homepage "https://www.fuse-t.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

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

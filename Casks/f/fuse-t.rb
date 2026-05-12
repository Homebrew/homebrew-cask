cask "fuse-t" do
  version "1.2.5"
  sha256 "f8c8c0c346d78533fa4d6f27baa0d86ea32d4f27cfdd432a5e8812719aba712c"

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

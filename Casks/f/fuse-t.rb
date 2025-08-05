cask "fuse-t" do
  version "1.0.49"
  sha256 "1c4d61a765240a23627a7f1ea9e204e515385a5f4a25165065a570c42bdb9f89"

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

  uninstall script: {
    executable: "/Library/Application Support/fuse-t/uninstall.sh",
    input:      ["Y"],
    sudo:       true,
  }

  # No zap stanza required
end

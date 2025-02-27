cask "fuse-t" do
  version "1.0.44"
  sha256 "1117eedfc5b09ed5c5eb531b97c64e8e88b8b9a274fe6a824aaf94d9276db4d1"

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

cask "fuse-t" do
  version "1.1.0"
  sha256 "b30ab75f57087e19c2f35385d5b1f439232f7d8664a8654372184666bb176f65"

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

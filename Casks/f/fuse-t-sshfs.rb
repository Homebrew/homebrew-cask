cask "fuse-t-sshfs" do
  version "1.0.2"
  sha256 "8875fe7a932893cef6333288ccf6f6e3844d3fd6825ea39e878b020466d259ca"

  url "https://github.com/macos-fuse-t/sshfs/releases/download/#{version}/sshfs-macos-installer-#{version}.pkg",
      verified: "github.com/macos-fuse-t/sshfs/"
  name "FUST T SSHFS"
  desc "FUSE-based filesystem client based on the SSH File Transfer Protocol"
  homepage "https://www.fuse-t.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "sshfs-macos-installer-#{version}.pkg"

  uninstall pkgutil: "org.sshfs.*"

  # No zap stanza required
end

cask "fuse-t" do
  version "1.0.44"
  sha256 "1117eedfc5b09ed5c5eb531b97c64e8e88b8b9a274fe6a824aaf94d9276db4d1"

  url "https://github.com/macos-fuse-t/fuse-t/releases/download/#{version}/fuse-t-macos-installer-#{version}.pkg",
      verified: "github.com/macos-fuse-t/fuse-t/"
  name "fuse-t"
  desc "Is a kext-less implementation of FUSE that uses a kext-less NFS v4 local server"
  homepage "https://www.fuse-t.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "fuse-t-macos-installer-#{version}.pkg"

  uninstall pkgutil: "org.fuse-t.#{version}"
  # pkg does not uninstall the following and are owned by root, thus requiring a custom uninstall delete stanza
  uninstall delete: [
    "/Library/Application Support/fuse-t",
    "/usr/local/lib/libfuse-t-#{version}.a",
    "/usr/local/lib/libfuse-t-#{version}.dylib",
    "/usr/local/lib/libfuse-t.a",
    "/usr/local/lib/libfuse-t.dylib",
    "/usr/local/lib/pkgconfig/fuse-t.pc",
  ]

  # No zap stanza required
end

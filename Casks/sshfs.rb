cask "sshfs" do
  version "2.5.0"
  sha256 "f8f4f71814273ea42dbe6cd92199f7cff418571ffd1b10c0608878d3472d2162"

  url "https://github.com/osxfuse/sshfs/releases/download/osxfuse-sshfs-#{version}/sshfs-#{version}.pkg",
      verified: "github.com/osxfuse/sshfs/"
  name "osxfuse-sshfs"
  desc "Filesystem client based on the SSH File Transfer Protocol"
  homepage "https://osxfuse.github.io/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/sshfs[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"
  depends_on cask: "macfuse"

  pkg "sshfs-#{version}.pkg"

  postflight do
    set_ownership ["/usr/local/include", "/usr/local/lib"]
  end

  uninstall pkgutil: [
    "com.github.osxfuse.pkg.SSHFS",
  ]

  caveats do
    kext
  end
end

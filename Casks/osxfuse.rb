cask "osxfuse" do
  version "4.1.2"
  sha256 "9ff344de38bad5ac5eca5194da00a2ba35dd6afdb9039133b5446168f8edafdb"

  url "https://github.com/osxfuse/osxfuse/releases/download/osxfuse-#{version}/osxfuse-#{version}.dmg",
      verified: "github.com/osxfuse/"
  name "OSXFUSE"
  desc "File system integration"
  homepage "https://osxfuse.github.io/"

  livecheck do
    url :url
    regex(/^osxfuse[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  pkg "Extras/FUSE for macOS #{version}.pkg"

  postflight do
    set_ownership ["/usr/local/include", "/usr/local/lib"]
  end

  uninstall pkgutil: [
    "com.github.osxfuse.pkg.Core",
    "com.github.osxfuse.pkg.MacFUSE",
    "com.github.osxfuse.pkg.PrefPane",
  ],
            kext:    "com.github.osxfuse.filesystems.osxfuse"

  zap trash: "~/Library/Caches/com.github.osxfuse.OSXFUSEPrefPane"

  caveats do
    reboot
    <<~EOS
      `#{token}` has been succeeded by `macfuse` as of version 4.0.0.

      To update to a newer version, do:
        brew uninstall #{token}
        brew install macfuse
    EOS
  end
end

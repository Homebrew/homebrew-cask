cask "osxfuse" do
  version "3.11.2"
  sha256 "0f9fd021810063ded2f9a40347e11961369238af27615842063831568a0860ce"

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

  uninstall kext:    "com.github.osxfuse.filesystems.osxfuse",
            pkgutil: [
              "com.github.osxfuse.pkg.Core",
              "com.github.osxfuse.pkg.MacFUSE",
              "com.github.osxfuse.pkg.PrefPane",
            ]

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

cask "osxfuse" do
  version "3.11.2"
  sha256 "0f9fd021810063ded2f9a40347e11961369238af27615842063831568a0860ce"

  url "https://github.com/osxfuse/osxfuse/releases/download/osxfuse-#{version}/osxfuse-#{version}.dmg",
      verified: "github.com/osxfuse/"
  name "OSXFUSE"
  desc "File system integration"
  homepage "https://osxfuse.github.io/"

  livecheck do
    url "https://github.com/osxfuse/osxfuse/releases"
    strategy :page_match
    regex(/osxfuse-(\d+(?:\.\d+)*)\.dmg/i)
  end

  pkg "Extras/FUSE for macOS #{version}.pkg"

  postflight do
    set_ownership [
      "/usr/local/include/osxfuse",
      "/usr/local/lib/libosxfuse.2.dylib",
      "/usr/local/lib/libosxfuse.dylib",
      "/usr/local/lib/libosxfuse_i64.2.dylib",
      "/usr/local/lib/libosxfuse_i64.dylib",
      "/usr/local/lib/libosxfuse_i64.la",
      "/usr/local/lib/libosxfuse.la",
    ]
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
  end
end

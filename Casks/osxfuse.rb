cask "osxfuse" do
  version "3.11.1"
  sha256 "7bd254fa76f52d98cb957df214d620a7bf71210d6f99303202481484f1fc0623"

  # github.com/osxfuse/ was verified as official when first introduced to the cask
  url "https://github.com/osxfuse/osxfuse/releases/download/osxfuse-#{version}/osxfuse-#{version}.dmg"
  appcast "https://github.com/osxfuse/osxfuse/releases.atom"
  name "OSXFUSE"
  homepage "https://osxfuse.github.io/"

  pkg "Extras/FUSE for macOS #{version}.pkg"

  postflight do
    set_ownership ["/usr/local/include", "/usr/local/lib"]
  end

  uninstall pkgutil: [
    "com.github.osxfuse.pkg.Core",
    "com.github.osxfuse.pkg.MacFUSE",
    "com.github.osxfuse.pkg.PrefPane",
  ],
            kext:    "com.github.osxfuse.filesystems.osxfusefs"

  zap trash: "~/Library/Caches/com.github.osxfuse.OSXFUSEPrefPane"

  caveats do
    reboot
  end
end

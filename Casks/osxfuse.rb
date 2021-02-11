cask "osxfuse" do
  version "4.0.5"
  sha256 "6365d10c9e388ac7a91fe1e65d54694faad69149f421125eaddfff07d48763ea"

  url "https://github.com/osxfuse/osxfuse/releases/download/macfuse-#{version}/macfuse-#{version}.dmg",
      verified: "github.com/osxfuse/"
  appcast "https://github.com/osxfuse/osxfuse/releases.atom"
  name "OSXFUSE"
  desc "File system integration"
  homepage "https://osxfuse.github.io/"

  pkg "Extras/macFUSE #{version}.pkg"

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
  end
end

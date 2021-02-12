cask "gdisk" do
  version "1.0.6"
  sha256 "32b756969414e1e8e78050f7123869e6b4eeb445361bb3f34e9cb0fde97b0454"

  url "https://downloads.sourceforge.net/gptfdisk/gdisk-#{version}.pkg"
  appcast "https://sourceforge.net/projects/gptfdisk/rss"
  name "GPT fdisk"
  homepage "https://sourceforge.net/projects/gptfdisk/"

  pkg "gdisk-#{version}.pkg"

  uninstall pkgutil: "com.rodsbooks.pkg.gdisk"
end

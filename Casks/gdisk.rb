cask "gdisk" do
  version "1.0.7"
  sha256 "917181d07c063b52795b14e53b8bf1d8ec0ab28354180d480aa803f5e9839a0b"

  url "https://downloads.sourceforge.net/gptfdisk/gdisk-#{version}.pkg"
  appcast "https://sourceforge.net/projects/gptfdisk/rss"
  name "GPT fdisk"
  homepage "https://sourceforge.net/projects/gptfdisk/"

  pkg "gdisk-#{version}.pkg"

  uninstall pkgutil: "com.rodsbooks.pkg.gdisk"
end

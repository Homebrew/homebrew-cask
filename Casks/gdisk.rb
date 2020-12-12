cask "gdisk" do
  version "1.0.5"
  sha256 "1c2ba083d943f71c67b6af1e2a42364cfa4e4c618e38841c90018f03ba5cd293"

  url "https://downloads.sourceforge.net/gptfdisk/gdisk-#{version}.pkg"
  appcast "https://sourceforge.net/projects/gptfdisk/rss"
  name "GPT fdisk"
  homepage "https://sourceforge.net/projects/gptfdisk/"

  pkg "gdisk-#{version}.pkg"

  uninstall pkgutil: "com.rodsbooks.pkg.gdisk"
end

cask "gdisk" do
  version "1.0.9"
  sha256 "f71cb241fa5d5e0fb5e8b8f1f0fa8875d546ced91095b75c216f70fc63301bcb"

  url "https://downloads.sourceforge.net/gptfdisk/gdisk-#{version}.pkg"
  name "GPT fdisk"
  desc "Disk partitioning tool"
  homepage "https://sourceforge.net/projects/gptfdisk/"

  pkg "gdisk-#{version}.pkg"

  uninstall pkgutil: "com.rodsbooks.pkg.gdisk"
end

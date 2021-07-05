cask "gdisk" do
  version "1.0.8"
  sha256 "3f8ad012d60b9b9fa5f74b930ee32b58d30240fbf3e917a9747690b92db19553"

  url "https://downloads.sourceforge.net/gptfdisk/gdisk-#{version}.pkg"
  name "GPT fdisk"
  desc "Disk partitioning tool"
  homepage "https://sourceforge.net/projects/gptfdisk/"

  pkg "gdisk-#{version}.pkg"

  uninstall pkgutil: "com.rodsbooks.pkg.gdisk"
end

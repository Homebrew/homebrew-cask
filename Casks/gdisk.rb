cask "gdisk" do
  version "1.0.7"
  sha256 "917181d07c063b52795b14e53b8bf1d8ec0ab28354180d480aa803f5e9839a0b"

  url "https://downloads.sourceforge.net/gptfdisk/gdisk-#{version}.pkg"
  name "GPT fdisk"
  desc "Disk partitioning tool"
  homepage "https://sourceforge.net/projects/gptfdisk/"

  livecheck do
    url "https://sourceforge.net/projects/gptfdisk/rss"
    strategy :page_match
    regex(%r{href=.*?/gdisk-(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "gdisk-#{version}.pkg"

  uninstall pkgutil: "com.rodsbooks.pkg.gdisk"
end

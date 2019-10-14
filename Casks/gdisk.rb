cask 'gdisk' do
  version '1.0.4'
  sha256 '67fa54f927439f969f08a093e9c2f85485b1f7015ea399632f5891b1694c9372'

  url "https://downloads.sourceforge.net/gptfdisk/gdisk-#{version}.pkg"
  appcast 'https://sourceforge.net/projects/gptfdisk/rss'
  name 'GPT fdisk'
  homepage 'https://sourceforge.net/projects/gptfdisk/'

  pkg "gdisk-#{version}.pkg"

  uninstall pkgutil: 'com.rodsbooks.pkg.gdisk'
end

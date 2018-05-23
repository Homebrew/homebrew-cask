cask 'gdisk' do
  version '1.0.3'
  sha256 '11a738629d4e40d5830c122ab063f9f07ffab80f0df9294e78f6e85f5f30930c'

  url "https://downloads.sourceforge.net/gptfdisk/gdisk-#{version}.pkg"
  appcast 'https://sourceforge.net/projects/gptfdisk/rss',
          checkpoint: '81f3940defdef59fb07dc30395b7ec8173fa1073c6d1f242a28178aaa039d34a'
  name 'GPT fdisk'
  homepage 'https://sourceforge.net/projects/gptfdisk/'

  pkg "gdisk-#{version}.pkg"

  uninstall pkgutil: 'com.rodsbooks.pkg.gdisk'
end

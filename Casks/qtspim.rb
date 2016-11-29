cask 'qtspim' do
  version '9.1.15'
  sha256 'd637a6ac90ff5ef8c372219768a97dc55f1bde2d919fce97c371b18011d0f52a'

  url "https://downloads.sourceforge.net/spimsimulator/QtSpim_#{version}_mac.mpkg.zip"
  appcast 'https://sourceforge.net/projects/spimsimulator/rss',
          checkpoint: '746e96427a6ac3af94e0207c64e46657f4bfbabcc8866a31b75a20b195972610'
  name 'QtSpim'
  homepage 'http://spimsimulator.sourceforge.net/'

  pkg 'QtSpim.mpkg'

  uninstall pkgutil: 'org.larusstone.pkg.QtSpim'
end

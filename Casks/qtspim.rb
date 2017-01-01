cask 'qtspim' do
  version '9.1.17'
  sha256 '50f8fbc6c9385bd6a3aecbf80c91c3b5542052da0593f71a3c292cc7ab2bcaf7'

  url "https://downloads.sourceforge.net/spimsimulator/QtSpim_#{version}_mac.mpkg.zip"
  appcast 'https://sourceforge.net/projects/spimsimulator/rss',
          checkpoint: '746e96427a6ac3af94e0207c64e46657f4bfbabcc8866a31b75a20b195972610'
  name 'QtSpim'
  homepage 'http://spimsimulator.sourceforge.net/'

  pkg 'QtSpim.mpkg'

  uninstall pkgutil: 'org.larusstone.pkg.QtSpim'
end

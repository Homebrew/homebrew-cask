cask 'qtspim' do
  version '9.1.20'
  sha256 '69ea4d4e8e7cf4788aaf3cd366a3876fb500bcfa3fe979c0a52de76a4d46a284'

  url "https://downloads.sourceforge.net/spimsimulator/QtSpim_#{version}_mac.mpkg.zip"
  appcast 'https://sourceforge.net/projects/spimsimulator/rss',
          checkpoint: '50cf28d7d09bf1c94251e0cebdf5f47a517507b089f022171b443ee200ef85db'
  name 'QtSpim'
  homepage 'http://spimsimulator.sourceforge.net/'

  pkg 'QtSpim.mpkg'

  uninstall pkgutil: 'org.larusstone.pkg.QtSpim'
end

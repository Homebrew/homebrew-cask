cask 'qtspim' do
  version '9.1.18'
  sha256 'b66e026ac7ea99db67ba6e546cf50e78395395a58744a443793800cf9deb175d'

  url "https://downloads.sourceforge.net/spimsimulator/QtSpim_#{version}_mac.mpkg.zip"
  appcast 'https://sourceforge.net/projects/spimsimulator/rss',
          checkpoint: '8655c6252572c0156d8dd1a5808d850affe99cba8856f11c42975677b60813c0'
  name 'QtSpim'
  homepage 'http://spimsimulator.sourceforge.net/'

  pkg 'QtSpim.mpkg'

  uninstall pkgutil: 'org.larusstone.pkg.QtSpim'
end

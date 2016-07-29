cask 'qtspim' do
  version '9.1.15'
  sha256 'd637a6ac90ff5ef8c372219768a97dc55f1bde2d919fce97c371b18011d0f52a'

  url "http://downloads.sourceforge.net/sourceforge/spimsimulator/QtSpim_#{version}_mac.mpkg.zip"
  name 'QtSpim'
  homepage 'http://spimsimulator.sourceforge.net/'
  license :bsd

  pkg 'QtSpim.mpkg'

  uninstall pkgutil: 'org.larusstone.pkg.QtSpim'
end

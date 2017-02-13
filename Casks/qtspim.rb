cask 'qtspim' do
  version '9.1.18'
  sha256 '5e51b50d0a497e3704808e03f314c15a501686aa7dc36b74c63cc7ae065e75d8'

  url "https://downloads.sourceforge.net/spimsimulator/QtSpim_#{version}_mac.mpkg.zip"
  appcast 'https://sourceforge.net/projects/spimsimulator/rss',
          checkpoint: 'db926e1454e85c1f9d8e9336296c5cc6e44bc68eb52f7e7c9a909a5c44366abd'
  name 'QtSpim'
  homepage 'http://spimsimulator.sourceforge.net/'

  pkg "QtSpim_#{version}_mac.mpkg"

  uninstall pkgutil: 'org.larusstone.pkg.QtSpim'
end

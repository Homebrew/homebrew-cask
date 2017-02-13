cask 'qtspim' do
  version '9.1.18'
  sha256 '5e51b50d0a497e3704808e03f314c15a501686aa7dc36b74c63cc7ae065e75d8'

  url "https://downloads.sourceforge.net/spimsimulator/QtSpim_#{version}_mac.mpkg.zip"
  appcast 'https://sourceforge.net/projects/spimsimulator/rss',
          checkpoint: 'eb3d8ed497f272fe2a6fd73fb6d53a39af4f25a03b552e3843ed4eab9f830aed'
  name 'QtSpim'
  homepage 'http://spimsimulator.sourceforge.net/'

  pkg "QtSpim_#{version}_mac.mpkg"

  uninstall pkgutil: 'org.larusstone.pkg.QtSpim'
end

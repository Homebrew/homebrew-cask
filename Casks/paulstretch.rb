cask 'paulstretch' do
  version '2.2.2'
  sha256 '9f23fe69965ab479e250c9705adaa8f01ea6fc50c3e5ff83f6a949d03a86a21b'

  url "http://www.cornwarning.com/xfer/PaulStretch-#{version}-OSX-10.6.dmg"
  appcast 'https://github.com/paulnasca/paulstretch_cpp/releases.atom'
  name 'PaulStretch'
  homepage 'http://hypermammut.sourceforge.net/paulstretch/'

  app 'PaulStretch/paulstretch.app'

end
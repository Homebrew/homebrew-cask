cask 'abscissa' do
  version '4.0.2'
  sha256 '6b78b8cee2141bd528b11c5d5b7754cde82b1f21f35db0ab86fd363015d535a3'

  url "http://rbruehl.macbay.de/Abscissa/Downloads/Abscissa-#{version}.zip"
  appcast 'http://rbruehl.macbay.de/Abscissa/Downloads/'
  name 'Abscissa'
  homepage 'http://rbruehl.macbay.de/Abscissa/'

  app 'Abscissa.app'
end

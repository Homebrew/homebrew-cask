cask 'abscissa' do
  version '4.0.3'
  sha256 '348162e44c506fc0a3f0259c226d09ebc3122f74778a173d99e4fdbe26f81675'

  url "http://rbruehl.macbay.de/Abscissa/Downloads/Abscissa-#{version}.zip"
  appcast 'http://rbruehl.macbay.de/Abscissa/Downloads/'
  name 'Abscissa'
  homepage 'http://rbruehl.macbay.de/Abscissa/'

  app 'Abscissa.app'
end

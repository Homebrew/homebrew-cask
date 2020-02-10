cask 'abscissa' do
  version '4.0.0'
  sha256 '7e4fb8b04c739342c45dacf998c2f8a020809283ce17e9da04b8bbf582349702'

  url "http://rbruehl.macbay.de/Abscissa/Downloads/Abscissa-#{version}.zip"
  appcast 'http://rbruehl.macbay.de/Abscissa/Downloads/'
  name 'Abscissa'
  homepage 'http://rbruehl.macbay.de/Abscissa/'

  app 'Abscissa.app'
end

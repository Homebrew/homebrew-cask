cask :v1 => 'abscissa' do
  version '3.4.3'
  sha256 '4ef1744451548aed19665cf71102e3ca8bb2af4ee02e45c6a18721a7b3c91a76'

  url "http://rbruehl.macbay.de/Abscissa/Downloads/Abscissa-#{version}.zip"
  homepage 'http://rbruehl.macbay.de/Abscissa'
  license :gratis

  app 'Abscissa.app'
end

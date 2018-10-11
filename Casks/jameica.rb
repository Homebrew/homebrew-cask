cask 'jameica' do
  version '2.8.2'
  sha256 '055833018c04c7d1ca5617db4472c5bbde256b6a789769d2c8ef6648e3b88312'

  url "https://www.willuhn.de/products/jameica/releases/current/jameica/jameica-macos64-#{version}.zip"
  name 'Jameica'
  homepage 'https://www.willuhn.de/products/jameica/'

  app 'Jameica.app'
end

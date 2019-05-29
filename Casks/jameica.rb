cask 'jameica' do
  version '2.8.4'
  sha256 '7770468d9fb143958d19bb7c0570b3219b8f4b456de9bcaa2699b650fdc47e48'

  url "https://www.willuhn.de/products/jameica/releases/current/jameica/jameica-macos64-#{version}.zip"
  name 'Jameica'
  homepage 'https://www.willuhn.de/products/jameica/'

  app 'jameica.app'
end

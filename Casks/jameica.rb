cask 'jameica' do
  version '2.8.1'
  sha256 'aff01580063d62548ab33994bf9ab8e74b7615c19ec9841a515f02a546a86b02'

  url "https://www.willuhn.de/products/jameica/releases/current/jameica/jameica-macos64-#{version}.zip"
  name 'Jameica'
  homepage 'https://www.willuhn.de/products/jameica/'
  gpg "#{url}.asc", key_id: '5a8ed9cfc0db6c70'

  app 'Jameica.app'
end

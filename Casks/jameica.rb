cask 'jameica' do
  version '2.8.0'
  sha256 '9aeb721ec258f363d4f63d9de156db95af18d3c4aaa1e9f08c4279d68576a375'

  url "https://www.willuhn.de/products/jameica/releases/current/jameica/jameica-macos64-#{version}.zip"
  name 'Jameica'
  homepage 'https://www.willuhn.de/products/jameica/'
  gpg "#{url}.asc", key_id: '5a8ed9cfc0db6c70'

  app 'Jameica.app'
end

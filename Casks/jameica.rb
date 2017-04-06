cask 'jameica' do
  version '2.6.4'
  sha256 'c4934e1579d5e2009b1ba39c27b6e2393f01b329f696164f059e3610f7d83751'

  url 'https://www.willuhn.de/products/jameica/releases/current/jameica/jameica-macos64.zip'
  name 'Jameica'
  homepage 'https://www.willuhn.de/products/jameica/'
  gpg "#{url}.asc", key_id: '5a8ed9cfc0db6c70'

  app 'Jameica.app'
end

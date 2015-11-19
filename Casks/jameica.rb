cask :v1 => 'jameica' do
  version :latest
  sha256 :no_check

  url 'https://www.willuhn.de/products/jameica/releases/current/jameica/jameica-macos64.zip'
  gpg "#{url}.asc",
      :key_id => '5a8ed9cfc0db6c70'
  name 'Jameica'
  homepage 'https://www.willuhn.de/products/jameica/'
  license :gpl

  app 'Jameica.app'
end

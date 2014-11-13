cask :v1 => 'jameica' do
  version :latest
  sha256 :no_check

  url 'http://www.willuhn.de/products/jameica/releases/current/jameica/jameica-macos64.zip'
  gpg "#{url}.asc",
      :key_id => '5a8ed9cfc0db6c70'
  homepage 'http://www.willuhn.de/products/jameica/'
  license :unknown

  app 'Jameica.app'
end

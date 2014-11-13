cask :v1 => 'atraci' do
  version '0.6.5'
  sha256 '838e95c57f76c4990288bd9227ef032efd267df3333dac06c65a095d493ce086'

  url "https://github.com/Atraci/Atraci/releases/download/#{version}/Atraci-mac.zip"
  homepage 'https://github.com/Atraci/Atraci'
  license :mit

  app 'Atraci.app'
end

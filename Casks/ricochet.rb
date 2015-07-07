cask :v1 => 'ricochet' do
  version '1.1.0'
  sha256 '80da185c8b2827ac8d953b9e58b8b517dc6f72d69dc8878c0d65131145cfa5e6'

  url "https://ricochet.im/releases/#{version}/Ricochet-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '9032cae4cbfa933a5a2145d5ff97c53f183c045d'
  name 'Ricochet'
  homepage 'https://ricochet.im/'
  license :bsd

  app 'Ricochet.app'
end

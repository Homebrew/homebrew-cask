cask 'ricochet' do
  version '1.1.2'
  sha256 '2680912308fb2b511c379e2dc7706a850aa9fb9aa3f13ea107cc125a81be81c4'

  url "https://ricochet.im/releases/#{version}/Ricochet-#{version}.dmg"
  name 'Ricochet'
  homepage 'https://ricochet.im/'
  gpg "#{url}.asc",
      key_id: '9032cae4cbfa933a5a2145d5ff97c53f183c045d'

  app 'Ricochet.app'
end

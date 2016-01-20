cask 'ricochet' do
  version '1.1.1'
  sha256 'e621fe34692ff6f10f3db863146903547e333d3373b4a62c468b58504576290b'

  url "https://ricochet.im/releases/#{version}/Ricochet-#{version}.dmg"
  name 'Ricochet'
  homepage 'https://ricochet.im/'
  license :bsd
  gpg "#{url}.asc",
      key_id: '9032cae4cbfa933a5a2145d5ff97c53f183c045d'

  app 'Ricochet.app'
end

cask :v1 => 'ricochet' do
  version '1.0.4'
  sha256 '089e8b8d177ee2b5aeb50b62447a27994a432ffd8fe1893e071c4df4bc5e1993'

  url "https://ricochet.im/releases/#{version}/Ricochet-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '9032cae4cbfa933a5a2145d5ff97c53f183c045d'
  homepage 'https://ricochet.im/'
  license :unknown

  app 'Ricochet.app'
end

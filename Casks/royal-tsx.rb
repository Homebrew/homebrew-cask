cask :v1 => 'royal-tsx' do
  version '2.0.2.1000'
  sha256 'a02a367ca4575b58f0ac832c2d12f50b0b51a0ec07bc94472b8e7b924dfbb6b0'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast 'http://v2.royaltsx.com/updates_beta.php',
          :sha256 => '322a251ba213a4ea9873ce4d5a1386cd9f17234ff683c88bcd939c6d9a458310'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end

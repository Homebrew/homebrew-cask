cask :v1 => 'royal-tsx' do
  version '2.0.4.8'
  sha256 '89e34c235ea8b2c82bebce7466f7aa0a0334ae52f219534b14b3589a38f26ac9'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast 'http://v2.royaltsx.com/updates_beta.php',
          :sha256 => '322a251ba213a4ea9873ce4d5a1386cd9f17234ff683c88bcd939c6d9a458310'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end

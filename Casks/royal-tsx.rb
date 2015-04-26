cask :v1 => 'royal-tsx' do
  version '2.0.0.1000'
  sha256 '1896d8a12c615ccf6c3b432b425a1ee9ee7c3d74439fc9a87ce2f253ccb775b4'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast 'http://v2.royaltsx.com/updates_beta.php',
          :sha256 => '322a251ba213a4ea9873ce4d5a1386cd9f17234ff683c88bcd939c6d9a458310'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end

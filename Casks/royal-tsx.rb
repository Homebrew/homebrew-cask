cask 'royal-tsx' do
  version '2.2.3.1000'
  sha256 '601ada5103428f2bca12941e68be90c5089c4c7b4e2f5a5eef62273f256df19a'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast 'http://v2.royaltsx.com/updates_beta.php',
          checkpoint: '40f1ff7c62bab18e6dcd877e950bcd1b1b08ec9119dc4e0633a020d6b43aabc5'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end

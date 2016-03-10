cask 'royal-tsx' do
  version '2.2.3.1000'
  sha256 '601ada5103428f2bca12941e68be90c5089c4c7b4e2f5a5eef62273f256df19a'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast 'http://v2.royaltsx.com/updates_beta.php',
          checkpoint: 'fb08deef7cc91181175d9ae6090e25b083cbcd3425111ccac562f9d11796d1bd'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end

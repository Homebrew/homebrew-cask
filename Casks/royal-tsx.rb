cask 'royal-tsx' do
  version '2.2.1.1000'
  sha256 '5622c6d7f3593c5b0f6056614f1afe45bceb9143ca05cb14867f8581de017a47'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast 'http://v2.royaltsx.com/updates_beta.php',
          :sha256 => '51ac7cd5b6f296d5b28d6d8f959e4e01d29ca28d4742eebe25c061d18f5d649c'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end

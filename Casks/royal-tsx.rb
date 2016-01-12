cask 'royal-tsx' do
  version '2.2.1.1000'
  sha256 '5622c6d7f3593c5b0f6056614f1afe45bceb9143ca05cb14867f8581de017a47'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast 'http://v2.royaltsx.com/updates_beta.php',
          :sha256 => 'f5a30300841e66f37005c35d327498682477c3cf3024bd850af9dd2af7fcd8ec'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end

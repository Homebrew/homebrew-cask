cask :v1 => 'hands-off' do
  version '2.3.6'
  sha256 '79243a6c23c1fec384b5a491e4a3b94e5d81284661257a360dfbbc6ce89dee0b'

  url "https://www.oneperiodic.com/files/Hands%20Off!%20v#{version}.dmg"
  appcast 'http://www.metakine.com/sparkle/handsoff2/checkupdate.php',
          :sha256 => 'e6d8a66d340e470d93c1a3a10f78a08ed38bf95ab376ddd2b56cbf8fa6bc70df'
  name 'Hands Off!'
  homepage 'https://www.oneperiodic.com/products/handsoff/'
  license :commercial

  app 'Hands Off!.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/com.metakine.handsoff.plist'
end

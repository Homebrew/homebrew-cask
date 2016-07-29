cask 'join-together' do
  version '7.6.1'
  sha256 '957a4c4a33be2afa6dcf6d706218aa86403100cb39b9db07f10577390c0e7e93'

  url "http://dougscripts.com/itunes/scrx/jointogether#{version.no_dots}.zip"
  appcast 'http://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          checkpoint: '388d83cd36ba376add48ffd5627cbfec629374e9555b96ea94a10727076c50a4'
  name 'Join Together'
  homepage 'http://dougscripts.com/itunes/itinfo/jointogether.php'
  license :commercial

  app 'Join Together.app'
end

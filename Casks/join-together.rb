cask 'join-together' do
  version '7.8.1'
  sha256 '1726dfdfa48f36011dfd6ef1dc4b7054f89c58ac959cc22984eabb8454d9a4f7'

  url "https://dougscripts.com/itunes/scrx/jointogether#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/jointogether_appcast.xml'
  name 'Join Together'
  homepage 'https://dougscripts.com/apps/jointogetherapp.php'

  app 'Join Together.app'
end

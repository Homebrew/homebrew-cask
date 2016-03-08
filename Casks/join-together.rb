cask 'join-together' do
  version '7.5.5'
  sha256 '3d81821602040db807a83c5d2f92923c4daaf1126d3cc764c7540c84a6797fdc'

  url "http://dougscripts.com/itunes/scrx/jointogether#{version.no_dots}.zip"
  appcast 'http://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          checkpoint: '98f7aa4d31637a15730da1752c75fe1ee057dbe564c5fb908d9909818087d4e8'
  name 'Join Together'
  homepage 'http://dougscripts.com/itunes/itinfo/jointogether.php'
  license :commercial

  app 'Join Together.app'
end

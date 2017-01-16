cask 'join-together' do
  version '7.7.0'
  sha256 '49e7a4f52ef0bb571ab98f35579c0844500e8589209c65dff04c6c4f29ab30ad'

  url "https://dougscripts.com/itunes/scrx/jointogether#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          checkpoint: '368a85b89047f8c02888780fd6e5b9d4cc7bf8150aa6d401af425de10f0326d2'
  name 'Join Together'
  homepage 'https://dougscripts.com/apps/jointogetherapp.php'

  app 'Join Together.app'
end

cask 'manico' do
  version '2.4.6'
  sha256 '3661297c9e02a9026b280712f4c3d0dfb5147c5d22cfdf847b8e05b4ba4bf978'

  url "https://manico.im/static/Manico_#{version}.dmg"
  appcast 'https://manico.im/static/manico-official-appcast.xml'
  name 'Manico'
  homepage 'https://manico.im/'

  app 'Manico.app'

  zap trash: [
               '~/Library/Containers/im.manico.Manico',
             ]
end

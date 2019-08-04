cask 'manico' do
  version '2.5.1'
  sha256 '5a5047f081897b20a92ec7b6279612b2d23c1569c87b4070943ec5e9c614ed16'

  url "https://manico.im/static/Manico_#{version}.dmg"
  appcast 'https://manico.im/static/manico-official-appcast.xml'
  name 'Manico'
  homepage 'https://manico.im/'

  depends_on macos: '>= :sierra'

  app 'Manico.app'

  zap trash: [
               '~/Library/Containers/im.manico.Manico',
             ]
end

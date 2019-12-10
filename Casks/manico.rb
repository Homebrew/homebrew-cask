cask 'manico' do
  version '2.6.1'
  sha256 '78b6a79357a5a505d564654ccdf43b51332ac0427d61ef5485b0004430ac6f78'

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

cask 'manico' do
  version '2.4.7'
  sha256 '7944f270423a9300ca3e80cc0b173caa9d826018f4540d6afb1270a0a51d465e'

  url "https://manico.im/static/Manico_#{version}.dmg"
  appcast 'https://manico.im/static/manico-official-appcast.xml'
  name 'Manico'
  homepage 'https://manico.im/'

  app 'Manico.app'

  zap trash: [
               '~/Library/Containers/im.manico.Manico',
             ]
end

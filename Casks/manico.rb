cask 'manico' do
  version '2.6.3,380'
  sha256 '81447e84d9cbffdc26d9919e14051d98768e5f550d22470b78832737c1d1550e'

  url "https://manico.im/static/Manico-#{version.after_comma}.zip"
  appcast 'https://manico.im/static/manico-official-appcast.xml'
  name 'Manico'
  homepage 'https://manico.im/'

  depends_on macos: '>= :sierra'

  app 'Manico.app'

  zap trash: [
               '~/Library/Containers/im.manico.Manico',
             ]
end

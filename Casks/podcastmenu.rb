cask 'podcastmenu' do
  version '1.2'
  sha256 '8063236dd66ff1b7915a50ac09a4581c0d4819eeaac76aa7a6023c52f0b7a8ec'

  url "https://github.com/insidegui/PodcastMenu/raw/master/Releases/PodcastMenu_v#{version}.zip"
  appcast 'https://github.com/insidegui/PodcastMenu/raw/master/Releases/appcast.xml',
          checkpoint: 'a9939edfc61c1f0a49296791ba5dde2ac685c3e668ba8195e3b0ea0fe9cd5e28'
  name 'PodcastMenu'
  homepage 'https://github.com/insidegui/PodcastMenu'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'PodcastMenu.app'

  zap delete: [
                '~/Library/Application Support/br.com.guilhermerambo.PodcastMenu',
                '~/Library/Caches/br.com.guilhermerambo.PodcastMenu',
                '~/Library/Preferences/br.com.guilhermerambo.PodcastMenu.plist',
              ]
end

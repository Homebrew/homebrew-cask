cask 'podcastmenu' do
  version '1.3'
  sha256 'bff1a2b2b5f6c6eac37f567fdf917b696b1ef0b203f61725e44274461f957e31'

  url "https://github.com/insidegui/PodcastMenu/raw/master/Releases/PodcastMenu_v#{version}.zip"
  appcast 'https://github.com/insidegui/PodcastMenu/raw/master/Releases/appcast.xml',
          checkpoint: '825cfe79ec4c6f76744905c4dc2be0502f32cac4db9251d6e5faf296635403e4'
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

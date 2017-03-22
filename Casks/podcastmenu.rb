cask 'podcastmenu' do
  version '1.2.1'
  sha256 'bc4685be0b4501a7f31dd88755713812f96017a9fa01f28d59b3d29dfb38dbf1'

  url "https://github.com/insidegui/PodcastMenu/raw/master/Releases/PodcastMenu_v#{version}.zip"
  appcast 'https://github.com/insidegui/PodcastMenu/raw/master/Releases/appcast.xml',
          checkpoint: '5517ad23d0ef1676e42820a8e6bd576b5b2c66d38947e747280edea6d5ec85f5'
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

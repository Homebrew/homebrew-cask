cask 'podcastmenu' do
  version '1.1'
  sha256 '22ef6cab4103c2f251f3b1edd3a49d8c38f8dbda7185d6e31951565b16103ae6'

  url "https://github.com/insidegui/PodcastMenu/raw/master/Releases/PodcastMenu_v#{version}.zip"
  appcast 'https://github.com/insidegui/PodcastMenu/raw/master/Releases/appcast.xml',
          checkpoint: '7e4cf192dc94123f2532aec7f0ad117dfee7f2028a9a7deacfa5e27737c1e345'
  name 'PodcastMenu'
  homepage 'https://github.com/insidegui/PodcastMenu'
  license :bsd

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'PodcastMenu.app'

  zap delete: [
                '~/Library/Application Support/br.com.guilhermerambo.PodcastMenu',
                '~/Library/Caches/br.com.guilhermerambo.PodcastMenu',
                '~/Library/Preferences/br.com.guilhermerambo.PodcastMenu.plist',
              ]
end

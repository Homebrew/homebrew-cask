cask 'adapter' do
  version '2.1.6'
  sha256 'ef2de9f0795cd446d26a4de1180b2580402abe8e5f13368e42d8da39eadde729'

  url "http://downloads.macroplant.com/Adapter-#{version}.dmg"
  appcast 'https://www.macroplant.com/adapter/adapterAppcast.xml',
          checkpoint: '8198e12480f9a0c5b45c10610bf50966e8cfbe1f11dbe0ece2e5661c7fcf5306'
  name 'Adapter'
  homepage 'https://macroplant.com/adapter'

  app 'Adapter.app'

  zap delete: [
                '~/Library/Application Support/Adapter',
                '~/Library/Caches/com.macroplant.adapter',
                '~/Library/com.macroplant.adapter.plist',
              ]
end

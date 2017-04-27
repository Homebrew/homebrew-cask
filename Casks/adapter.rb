cask 'adapter' do
  version '2.1.6'
  sha256 'ef2de9f0795cd446d26a4de1180b2580402abe8e5f13368e42d8da39eadde729'

  url "http://downloads.macroplant.com/Adapter-#{version}.dmg"
  appcast "https://macroplant.com/adapter/mac/v#{version.major}/appcast",
          checkpoint: '75a11da44c802486bc6f65640aa48a730f0f684c5c07a42ba3cd1735eb3fb070'
  name 'Adapter'
  homepage 'https://macroplant.com/adapter'

  app 'Adapter.app'

  zap delete: [
                '~/Library/Application Support/Adapter',
                '~/Library/Caches/com.macroplant.adapter',
                '~/Library/com.macroplant.adapter.plist',
              ]
end

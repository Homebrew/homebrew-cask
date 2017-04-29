cask 'adapter' do
  version '2.1.6'
  sha256 'ef2de9f0795cd446d26a4de1180b2580402abe8e5f13368e42d8da39eadde729'

  url "http://downloads.macroplant.com/Adapter-#{version}.dmg"
  appcast "https://macroplant.com/adapter/mac/v#{version.major}/appcast",
          checkpoint: '5f4a331d45a3f35e44fa58a66af7cd7a8f212950a0a6a53a98a2e406ff2e5d95'
  name 'Adapter'
  homepage 'https://macroplant.com/adapter'

  depends_on macos: '>= :lion'

  app 'Adapter.app'

  zap delete: [
                '~/Library/Application Support/Adapter',
                '~/Library/Caches/com.macroplant.adapter',
                '~/Library/com.macroplant.adapter.plist',
              ]
end

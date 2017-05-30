cask 'subler' do
  version '1.3.1'
  sha256 '8f221142c1695d9d38749ac4ae2b9693b7ff31adb0c20ce6a45c4df894b5119f'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '7a11980de2c032196673bb2f12dd5bec2fd2d954c9ff0b8a73119f2da03208eb'
  name 'Subler'
  homepage 'https://subler.org/'

  auto_updates true

  app 'Subler.app'

  zap delete: [
                '~/Library/Preferences/org.galad.Subler.plist',
                '~/Library/Application Support/Subler',
                '~/Library/Caches/org.galad.Subler',
                '~/Library/Saved Application State/org.galad.Subler.savedState',
              ]
end

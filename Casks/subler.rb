cask 'subler' do
  version '1.1.4'
  sha256 'db777a7949d1dbdbb42f18dc3c282dc5dfd8132368cf45b53321ee5d9c8000f6'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: 'f2a5c9c1ece43c2239929ee8f843fa56f27d22f3eaced23f7a0d377805d706d8'
  name 'Subler'
  homepage 'https://subler.org/'
  license :gpl

  auto_updates true

  app 'Subler.app'

  zap delete: [
                '~/Library/Preferences/org.galad.Subler.plist',
                '~/Library/Application Support/Subler',
                '~/Library/Caches/org.galad.Subler',
                '~/Library/Saved Application State/org.galad.Subler.savedState',
              ]
end

cask 'subler' do
  version '1.2.8'
  sha256 '542b80e01ec756665f79a81da2cb36f97c8da5b1b068bb37e7cdfc0cf0ff08c7'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: 'c205e0f8c172f1350a55c543aa2da055c085a0176f0e405f13c6b6169a898780'
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

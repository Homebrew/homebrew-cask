cask 'subler' do
  version '1.4'
  sha256 '1011dd044b01a6cb3a3bd923269cd5a010d0d1a7433a3eb7a4ee759f68c89588'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: 'd068a823bab4d11c183d739d5d423cf292262f81e43a5d7d4c577bcc9893eb8b'
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

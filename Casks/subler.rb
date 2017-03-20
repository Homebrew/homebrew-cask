cask 'subler' do
  version '1.2.6'
  sha256 'cd67912ad62381288e4ce38c106b444bccc4ea97ac02cab3a5d08f678e306a32'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: 'f83372b4af7dc447203cf356ca3e0fe761a26a863d84f725ae8472c4f7e8c629'
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

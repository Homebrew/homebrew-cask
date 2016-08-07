cask 'subler' do
  version '1.1'
  sha256 'adcffb181ce632c209b63e6490e44d4d518dd681f603fc0b0e0f3883cff9934a'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '18085cd6bb7aee775bd4a96cab7aaa4b5029576fad0129813fa4a58ce58805d8'
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

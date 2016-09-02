cask 'subler' do
  version '1.1.3'
  sha256 '3a9faf950e5565271826855dbd8d18b00d00bc3025fc02d0c40714c782e8a430'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '428533e53a6eb10787dcca60abed8226bb894343001f6f6efc17366d48005814'
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

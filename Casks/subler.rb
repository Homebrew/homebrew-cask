cask 'subler' do
  version '1.2.7'
  sha256 'acb678a53632216badd34c3f938a1534cf47ebc7ac18e24daf03c2ecd7b67720'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: 'e388a2049cf12a7cf1a31a6f0080bc9e182503ebefea3543983f9aaa2672498c'
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

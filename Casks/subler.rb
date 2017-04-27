cask 'subler' do
  version '1.2.9'
  sha256 'fc8979fdb4db0db571f73d4234ffa5c3ded6d9daf7df89798888235cc2f0fcb8'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: 'da29fbc8041ea889513cf55c7a5a3f29a7d2786df21e294657ec7adf8967bf89'
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

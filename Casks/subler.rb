cask 'subler' do
  version '1.3.2'
  sha256 '6bfa953b6247d35c0a4132cc562ff3e46006bd2586413b3614a606f43cd00125'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '3ad70676f826fc7e2c0d733d5afec7a63c3994f86be2ccbe3954ec02ebf4b7ee'
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

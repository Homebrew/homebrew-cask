cask 'subler' do
  version '1.1.2'
  sha256 'cff702cdf00d3fbd5b9e45882f00c4b85e065bc9a4a6124190fb971eb0fe042d'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '685d4eed5fa9908ef58cd45c6154b7509acec5666e0068dda0c8cf99821656b0'
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

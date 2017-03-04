cask 'subler' do
  version '1.2.5'
  sha256 'f22ad859eb33fbb52d8f376b6a654a526534f7fc1a9efbf451aabca99999667d'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '3fdc2ed8d3d32fe622ab45e209180b133908de09cef0d80c24c6c3ecea44c13f'
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

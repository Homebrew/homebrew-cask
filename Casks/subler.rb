cask 'subler' do
  version '1.3.3'
  sha256 '0d40b42798dcc2a3a43192aadc3a9a526259de482fb698fde2f956e4e0504a39'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '45930d82bd59c678d88ffc9a9e6bd058e7eb888b3da75615c294bbe8ffa7befc'
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

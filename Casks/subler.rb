cask 'subler' do
  version '1.2.2'
  sha256 '36082d2493e13e6fb19beaffbda33a09d96dabaa15ee6954e8bfb644ffa27703'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '4126cefbaad1bea2f72d7e9dc31232c99afaeb1b9a6403af58b0d43d73dd3069'
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

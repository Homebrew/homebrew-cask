cask 'subler' do
  version '1.0.8'
  sha256 'ca4e5de56cddac494936916bfcf837cb4ab181bdcc1abcf1e6093699eaa514e4'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '348e5ac77e8e5cecb8c9e73683fb4e131a5ac9688e70893254e526125ca07117'
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

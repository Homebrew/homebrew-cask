cask 'subler' do
  version '1.4.5'
  sha256 '243c6493710a615a209581b7b90baf35732620b374f7eef9565143aea591a3da'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '38e175567df9d64d16b2082b4a59752ccd3029bd1b127883a4ce464e6c5e96d2'
  name 'Subler'
  homepage 'https://subler.org/'

  auto_updates true

  app 'Subler.app'

  zap trash: [
               '~/Library/Preferences/org.galad.Subler.plist',
               '~/Library/Application Support/Subler',
               '~/Library/Caches/org.galad.Subler',
               '~/Library/Saved Application State/org.galad.Subler.savedState',
             ]
end

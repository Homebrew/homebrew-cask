cask 'subler' do
  version '1.4.7'
  sha256 'df1b724d7c5dcafda24386014217c42b8d16994ce1aaed945fc06399bd9898b3'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '1db302667b3b8082aa1567c04ec5f317b72003bd305fb48437222337d35a4ff5'
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

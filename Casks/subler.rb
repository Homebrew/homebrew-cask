cask 'subler' do
  version '1.4.9'
  sha256 'ae1a391586d52848eb4c719141ab0502655437b24d5aa71137a4ae1d397814bd'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '2b62209e0fd7ce47c9b7b844c07d0eaf0f72c60f15fce0b5804e2dc4950499c7'
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

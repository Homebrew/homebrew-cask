cask 'subler' do
  version '1.0.9'
  sha256 '22db980c60b97a6f2943b1215befe16d068c6c7480f21cf17e49f78c9e9c18b3'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '9d7cbef07838a60faf13921cc6e969c93b06067d1cbb9da82b5f11a0f0a49f39'
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

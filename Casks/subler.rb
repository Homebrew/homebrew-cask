cask 'subler' do
  version '1.4.2'
  sha256 '863736d6a77abb0f925c575a281ce5e3f78b462cdfade6a2b06562ab9c43b623'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: 'a58cdc3f4df06a8a1b2962faf0f69d458aefa235f8adda57a274a1373d87709d'
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

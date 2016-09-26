cask 'subler' do
  version '1.1.7'
  sha256 'e69fe1d982bebff08647bb084983203048d9630f04a1a928ecb29ff7ed388e8e'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: 'c93993578b96b4b5748b20cc650a257595144e5f8fca83db31ae6da1bcaeb41b'
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

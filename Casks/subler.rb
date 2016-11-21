cask 'subler' do
  version '1.2.1'
  sha256 'f955ba61c4f9dba05e89c286c873f27aee2d5838613cd770cd33433290206bfe'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: 'fe93ab507bdedc03aacee8ac6c38e5903ef0cbc5543d9f2e2d4784cca7f0e535'
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

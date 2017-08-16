cask 'subler' do
  version '1.3.5'
  sha256 '28963c8d344ac4817d040cf20495c74fb1bca1111ae3213dc859f5770551064a'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '87cb85473d19e13f8d0fa7c3a0c901dd3ad34b1b4002013cbb451ac70afe15f8'
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

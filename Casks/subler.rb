cask 'subler' do
  version '1.1.5'
  sha256 'f2ee2bc0171d345f898b5ed17dc137b733e6c776757fce8e86055cc04b3336d1'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '1d3605c35e731f888ffb4bbbad7006d5c2dfc6908952c25036f4e0284cc7fb4e'
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

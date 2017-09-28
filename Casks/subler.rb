cask 'subler' do
  version '1.3.8'
  sha256 '78a6071b8cf6a039f65c22a7202c4f7af230983ab797e39d172c58efae267cbc'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '187cffe4df021aeb6ac4ae7c47ad61131c6f03d21ec07383ce109319d10c3e12'
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

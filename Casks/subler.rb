cask 'subler' do
  version '1.2.4'
  sha256 '888a08668b4b5e4e94544577c98096dd9be1b59dff6463ae1e1dd8dcb3d77948'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '15a0d9999a533622ae87fa0c7928de94a1dce8d258e93efdd3f7b1a2e5389f2e'
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

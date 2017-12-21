cask 'subler' do
  version '1.4.6'
  sha256 '110a961df24ee8c9b23a050e98dfb77452487bf6f133af2afbde6b1ebcf8a40e'

  # bitbucket.org/galad87/subler was verified as official when first introduced to the cask
  url "https://bitbucket.org/galad87/subler/downloads/Subler-#{version}.zip"
  appcast 'https://subler.org/appcast/appcast.xml',
          checkpoint: '86bbe748dffcab012b7f2c808afbf2c76d3d964d4aaa2b54460dfd39a0d1e5a2'
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

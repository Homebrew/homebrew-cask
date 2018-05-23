cask 'relay' do
  version '0.0.2'
  sha256 '9f90acd111210b2fbdd53af286edb15793f63940bd397444424693ef8bd1bf02'

  # dl-getrelay-com.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://dl-getrelay-com.s3.amazonaws.com/desktop/Relay-#{version}.dmg"
  name 'Relay'
  homepage 'https://getrelay.com/'

  app 'Relay.app'

  zap trash: [
               '~/Library/Application Support/Relay',
               '~/Library/Caches/Relay',
               '~/Library/Caches/com.getrelay-desktop',
               '~/Library/Preferences/com.getrelay-desktop.plist',
               '~/Library/Saved Application State/com.getrelay-desktop.savedState',
             ]
end

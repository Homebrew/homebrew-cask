cask 'relay' do
  version '1.0.1'
  sha256 '5016c4efb2aa79a8fb151864c32f4562f6b1de9110c456d06abc782de1579b7c'

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

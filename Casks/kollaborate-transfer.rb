cask 'kollaborate-transfer' do
  version '1.5.0.0'
  sha256 '35a05feafa7d8499b1462a0a28970fcd1e8b265f037be0f23aaaa57c9a2ced4c'

  # digitalrebellion.com was verified as official when first introduced to the cask
  url "http://www.digitalrebellion.com/download/kollabtransfer?version=#{version.no_dots}"
  name 'Kollaborate Transfer'
  homepage 'https://www.kollaborate.tv/resources'

  app 'Kollaborate Transfer.app'

  zap trash: '~/Library/Preferences/com.digitalrebellion.KollabTransfer.plist'
end

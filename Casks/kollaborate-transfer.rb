cask 'kollaborate-transfer' do
  version '1.4.5.0'
  sha256 'd534c227c409de20f1f9bd399fad0ddc95d7f09b2e1e0fe91161d6502fdf6917'

  # digitalrebellion.com was verified as official when first introduced to the cask
  url "http://www.digitalrebellion.com/download/kollabtransfer?version=#{version.no_dots}"
  name 'Kollaborate Transfer'
  homepage 'https://www.kollaborate.tv/resources'

  app 'Kollaborate Transfer.app'

  zap delete: '~/Library/Preferences/com.digitalrebellion.KollabTransfer.plist'
end

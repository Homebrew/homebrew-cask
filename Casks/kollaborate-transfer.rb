cask 'kollaborate-transfer' do
  version '1.4.3.1'
  sha256 '65ba2983e9f39c39895dc7613cc7c2c27c6aa75a789c0aae2cb7b6bcc55f55b6'

  # digitalrebellion.com was verified as official when first introduced to the cask
  url "http://www.digitalrebellion.com/download/kollabtransfer?version=#{version.no_dots}"
  name 'Kollaborate Transfer'
  homepage 'https://www.kollaborate.tv/resources'

  app 'Kollaborate Transfer.app'

  zap delete: '~/Library/Preferences/com.digitalrebellion.KollabTransfer.plist'
end

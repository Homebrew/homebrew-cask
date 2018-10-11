cask 'kollaborate-transfer' do
  version '1.5.2.0'
  sha256 'b5dab39e60846ec5f7926806120ad4f84ec42cbef0d0b57ac4eef2279d91a3ab'

  # digitalrebellion.com was verified as official when first introduced to the cask
  url "https://www.digitalrebellion.com/download/kollabtransfer?version=#{version.no_dots}"
  name 'Kollaborate Transfer'
  homepage 'https://www.kollaborate.tv/resources'

  app 'Kollaborate Transfer.app'

  zap trash: '~/Library/Preferences/com.digitalrebellion.KollabTransfer.plist'
end

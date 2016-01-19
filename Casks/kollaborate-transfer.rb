cask 'kollaborate-transfer' do
  version '1.3.0.0'
  sha256 '3fcfd9bab9232133b2a78bcbfc6fecf1b4730adf014996d5bd2fdf57d2e5b734'

  # digitalrebellion.com is the official download host per the vendor homepage
  url "http://www.digitalrebellion.com/download/kollabtransfer?version=#{version.no_dots}"
  name 'Kollaborate Transfer'
  homepage 'https://www.kollaborate.tv/resources'
  license :gratis

  app 'Kollaborate Transfer.app'

  zap delete: '~/Library/Preferences/com.digitalrebellion.KollabTransfer.plist'
end

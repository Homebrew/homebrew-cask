cask 'dragand' do
  version '1.0.1'
  sha256 '76efb051dc82cba2e211191953e8de2d04c69caaa6143d1025af1d79f5253dad'

  url "http://dragand.watch/download/#{version}/Dragand_Mac_#{version}.zip"
  name 'Dragand'
  homepage 'http://dragand.watch/'

  app 'Dragand.app'

  zap trash: [
               '~/Library/Application Support/Dragand',
               '~/Library/Preferences/com.node-webkit-builder.dragand.plist',
               '~/Library/Saved Application State/com.node-webkit-builder.dragand.savedState',
             ]
end

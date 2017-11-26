cask 'altair' do
  version '1.5.4'
  sha256 'dfa06f1f07fc5d62ed00ffa4d99394e879e3915d3188822f8bf59441974e3b3d'

  # github.com/imolorhe/altair was verified as official when first introduced to the cask
  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair-darwin-x64-#{version}.zip"
  appcast 'https://github.com/imolorhe/altair/releases.atom',
          checkpoint: 'b65660182062a10f1cba531c6300cec1988982920c6fe95a94ae58ea27197083'
  name 'Altair GraphQL Client'
  homepage 'https://altair.sirmuel.design/'

  app 'altair.app'

  zap trash: [
               '~/Library/Application Support/altair',
               '~/Library/Preferences/com.electron.altair.helper.plist',
               '~/Library/Preferences/com.electron.altair.plist',
               '~/Library/Saved Application State/com.electron.altair.savedState',
             ]
end

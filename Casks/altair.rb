cask 'altair' do
  version '1.6.5'
  sha256 '41fae8be4565bb3a2beefa85761ca004c44ac9ef6ca893076ed615257768fae1'

  # github.com/imolorhe/altair was verified as official when first introduced to the cask
  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair-#{version}-mac.zip"
  appcast 'https://github.com/imolorhe/altair/releases.atom',
          checkpoint: '76822cfd18acc8d4b7d3bf5de0063df0a85d63f121578bf5f64827f458bce759'
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

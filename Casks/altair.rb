cask 'altair' do
  version '1.5.8'
  sha256 '2df44e3d0841c69723c5bfab44c63ec25156dd2a17d5271c426bc1da2f33794e'

  # github.com/imolorhe/altair was verified as official when first introduced to the cask
  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair-#{version}-mac.zip"
  appcast 'https://github.com/imolorhe/altair/releases.atom',
          checkpoint: '3b6b754665cdc3f1d1f1994c5177de35360019cc2316515b785e5c2c830fe128'
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

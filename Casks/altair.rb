cask 'altair' do
  version '1.7.7'
  sha256 'ac151f1dca665cf060daea6e40096f7325e1037f43a4125575003b21440cf441'

  # github.com/imolorhe/altair was verified as official when first introduced to the cask
  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair-#{version}-mac.zip"
  appcast 'https://github.com/imolorhe/altair/releases.atom'
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

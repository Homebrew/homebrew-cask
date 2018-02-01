cask 'altair' do
  version '1.6.2'
  sha256 '2952d7f5d70ccd58ba69aac35751584b67ca117f482305c57359a056c112ece7'

  # github.com/imolorhe/altair was verified as official when first introduced to the cask
  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair-#{version}-mac.zip"
  appcast 'https://github.com/imolorhe/altair/releases.atom',
          checkpoint: 'ef224046b692f8ba969c9601377dc2b3ca8b95a439e5ac4975395fac7f807473'
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

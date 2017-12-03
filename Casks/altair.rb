cask 'altair' do
  version '1.5.5'
  sha256 'ee8858141cfd6824ad2e2b24fd1c3529d4c8733db6f1d9b1149e70ab99aa13c3'

  # github.com/imolorhe/altair was verified as official when first introduced to the cask
  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair-#{version}-mac.zip"
  appcast 'https://github.com/imolorhe/altair/releases.atom',
          checkpoint: 'b5d7cfffe62e6829f0a163a7767f96b7a8666a203fa5c51c985201ad098f90ec'
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

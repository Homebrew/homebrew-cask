cask 'altair' do
  version '1.7.1'
  sha256 'b0f7c5fe38768e4b26902e78d0af5614ad09d6d3ef5433691dad86af86784431'

  # github.com/imolorhe/altair was verified as official when first introduced to the cask
  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair-#{version}-mac.zip"
  appcast 'https://github.com/imolorhe/altair/releases.atom',
          checkpoint: 'bdf2c48e8dccb24a0bea1dfbba6340f9864b10895a8e4d4cc0ec105e439793c7'
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

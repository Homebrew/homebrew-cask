cask 'altair' do
  version '1.5.2'
  sha256 '51a8910d0f3ba18beb66c4a141590b80938b68a03f2af6de3595607908a3ac3a'

  # github.com/imolorhe/altair was verified as official when first introduced to the cask
  url "https://github.com/imolorhe/altair/releases/download/v#{version}/altair-darwin-x64-#{version}.zip"
  appcast 'https://github.com/imolorhe/altair/releases.atom',
          checkpoint: '6bd586fc8f3b1d8c0160ef0f6c3d794e94acd56b48a7eae93c285623f9df21b7'
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

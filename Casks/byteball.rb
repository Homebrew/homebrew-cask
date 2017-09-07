cask 'byteball' do
  version '1.10.1'
  sha256 'dfa748bfc055133b2da9d8c5d66294b2c7d0983398e0b38a719a9610763ef947'

  # github.com/byteball/byteball was verified as official when first introduced to the cask
  url "https://github.com/byteball/byteball/releases/download/v#{version}/Byteball-osx64.dmg"
  appcast 'https://github.com/byteball/byteball/releases.atom',
          checkpoint: '94fb6f10ab5d85357cad4af114143e92e22ea60b2f0a0c29b19d5c0d7464b6a3'
  name 'Byteball'
  homepage 'https://byteball.org/'

  app 'byteball.app'

  zap delete: [
                '~/Library/Caches/byteball',
                '~/Library/Saved Application State/com.nw-builder.byteball.savedState',
              ],
      trash:  [
                '~/Library/Application Support/byteball',
                '~/Library/Preferences/com.nw-builder.byteball.plist',
              ]
end

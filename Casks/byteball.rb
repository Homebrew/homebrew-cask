cask 'byteball' do
  version '1.11.1'
  sha256 'f67a287f04c0e49d5ed6eab237c9006e5eefbd6f11026097ad119748725e3e12'

  # github.com/byteball/byteball was verified as official when first introduced to the cask
  url "https://github.com/byteball/byteball/releases/download/v#{version}/Byteball-osx64.dmg"
  appcast 'https://github.com/byteball/byteball/releases.atom',
          checkpoint: '51782cb795fc22ce346a968d33814c9eeb4e5f5f42fa035a8b0b581c971355b7'
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

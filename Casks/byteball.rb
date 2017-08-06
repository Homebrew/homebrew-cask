cask 'byteball' do
  version '1.10.0'
  sha256 '7180e99ae30db400955e29cc8b87c138c0f7d6d5640636f7c7bc0c44feea3348'

  # github.com/byteball/byteball was verified as official when first introduced to the cask
  url "https://github.com/byteball/byteball/releases/download/v#{version}/Byteball-osx64.dmg"
  appcast 'https://github.com/byteball/byteball/releases.atom',
          checkpoint: '566d628ad47525ad75c4ca0692845a0d63d7167f7fc0618c4f0e3677432915b3'
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

cask 'byteball' do
  version '2.1.0'
  sha256 '60e1d4adade4b3a38a930ee70a5c24397aba5be93950d39141a5792df1abde2b'

  # github.com/byteball/byteball was verified as official when first introduced to the cask
  url "https://github.com/byteball/byteball/releases/download/v#{version}/Byteball-osx64.dmg"
  appcast 'https://github.com/byteball/byteball/releases.atom',
          checkpoint: 'bc766ea84b52d2f54a8965fe229c349293a4c925fe33de07da4452ff209ce219'
  name 'Byteball'
  homepage 'https://byteball.org/'

  app 'byteball.app'

  zap trash: [
               '~/Library/Application Support/byteball',
               '~/Library/Caches/byteball',
               '~/Library/Preferences/com.nw-builder.byteball.plist',
               '~/Library/Saved Application State/com.nw-builder.byteball.savedState',
             ]
end

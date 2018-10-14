cask 'byteball' do
  version '2.6.0'
  sha256 'cf73029f39882893829d5e471191059083f8f2d525c29ba2ff3f1eb40671ba95'

  # github.com/byteball/byteball was verified as official when first introduced to the cask
  url "https://github.com/byteball/byteball/releases/download/v#{version}/Byteball-osx64.dmg"
  appcast 'https://github.com/byteball/byteball/releases.atom'
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

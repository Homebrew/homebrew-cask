cask 'byteball' do
  version '2.3.0'
  sha256 '155ca1db521d3fc506c8869d633028f8bd10d860f54a00cefe9ef676f07c23ad'

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

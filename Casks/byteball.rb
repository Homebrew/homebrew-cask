cask 'byteball' do
  version '2.2.0'
  sha256 '436f81611ace2722016228c2f3313e89567231d2ae9d4b0fbb2b2c80030090da'

  # github.com/byteball/byteball was verified as official when first introduced to the cask
  url "https://github.com/byteball/byteball/releases/download/v#{version}/Byteball-osx64.dmg"
  appcast 'https://github.com/byteball/byteball/releases.atom',
          checkpoint: '6bd833dc2ad35e2a02b16b96c7b8a6128ce3345965806e2895ac1dc8586d672f'
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

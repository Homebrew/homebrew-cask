cask 'byteball' do
  version '1.11.0'
  sha256 'bd8eabaab338b24c9bebcfbd6d51e3de82d63d2d7800282f5e4020747e37ea1b'

  # github.com/byteball/byteball was verified as official when first introduced to the cask
  url "https://github.com/byteball/byteball/releases/download/v#{version}/Byteball-osx64.dmg"
  appcast 'https://github.com/byteball/byteball/releases.atom',
          checkpoint: '2e7bcf4e94856a0347deaaab99ba1ee7a59cd66a064b6a6ad6de1021ce7f64d4'
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

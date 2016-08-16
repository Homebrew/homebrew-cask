cask 'brave' do
  version '0.11.5dev'
  sha256 'd0ba079dbaeb7711a91184297892eb85dd8a176a3393eb38b4f0b165ad2d785f'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '28313a45b29c2732f1e75490fce48f2c55c69b44954bf2581930cd731aa67d23'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end

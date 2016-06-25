cask 'brave' do
  version '0.10.4dev'
  sha256 '170fc2cb685d11320644aa7ff02cce8658425513f53536702e8ef3773ee79a54'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'e402a34e51ceaa5074836f924770bfbbadd69cfa7ebff74e57d49497a61df187'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end

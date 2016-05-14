cask 'brave' do
  version '0.9.6dev'
  sha256 '7b14236352f735e013522d298e02d6e4dc46a37b9ffa80c77da71d2a1282f619'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'a0584299961cee54f9091ec3f25a5235b21aa4d23a05033484dbbf05920f5512'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end

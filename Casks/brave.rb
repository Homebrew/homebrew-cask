cask 'brave' do
  version '0.13.5dev'
  sha256 '544e0f9a6e0d53e5140f87861b7e9362d6aa838779e4f532cfd29a6d3fac7613'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '1e55b0aef2c9bf5508f554de0419d263d16922756b4132105c7cb077d3d11dfd'
  name 'Brave'
  homepage 'https://brave.com/'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end

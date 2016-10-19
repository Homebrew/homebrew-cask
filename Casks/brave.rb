cask 'brave' do
  version '0.12.5dev'
  sha256 '20926723d628afa805de3146e820382e773223e599f7e804bf57a35670eb9cc4'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '558bfc0a40b89f08c171cbc140a497d3a03fbceabaf3b2686f038d1e7d8b9105'
  name 'Brave'
  homepage 'https://brave.com'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end

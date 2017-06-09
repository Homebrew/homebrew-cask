cask 'brave' do
  version '0.16.6'
  sha256 '89172182380df394f1179457aef789d23fbe72050a75088644f055e0c3678b72'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'cdd61e485943bf99d9dc908cb23b9abfa612e1ca623fcfbabf35393c828a1077'
  name 'Brave'
  homepage 'https://brave.com/'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end

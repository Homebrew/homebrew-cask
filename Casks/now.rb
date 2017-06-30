cask 'now' do
  version '1.3.3'
  sha256 '2d394531662b9a6bc7e6fb1a8001090788f1f5da932235bb500129f769858774'

  # github.com/zeit/now-desktop was verified as official when first introduced to the cask
  url "https://github.com/zeit/now-desktop/releases/download/#{version}/now-desktop-#{version}-mac.zip"
  appcast 'https://github.com/zeit/now-desktop/releases.atom',
          checkpoint: '900d9116c5463270836ac8be335b76a687919bff7b94f70ad41ffdf714820be7'
  name 'Now'
  homepage 'https://zeit.co/now'

  app 'Now.app'

  zap delete: [
                '~/Library/Application Support/Now',
                '~/Library/Caches/co.zeit.now',
                '~/Library/Caches/co.zeit.now.ShipIt',
              ],
      trash:  [
                '~/.now.json',
                '~/Library/Preferences/co.zeit.now.plist',
                '~/Library/Preferences/co.zeit.now.helper.plist',
                '/usr/local/bin/now',
              ]
end

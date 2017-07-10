cask 'now' do
  version '2.2.0'
  sha256 'de360d3e0fa96170771e9751461c354f0a45972b4a17a80450672bca92117a33'

  # github.com/zeit/now-desktop was verified as official when first introduced to the cask
  url "https://github.com/zeit/now-desktop/releases/download/#{version}/now-desktop-#{version}-mac.zip"
  appcast 'https://github.com/zeit/now-desktop/releases.atom',
          checkpoint: 'd2d71bec1abce4aac1bf76b0d0d45f67e8f64ee71404e8e90e4760ccbb377dea'
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

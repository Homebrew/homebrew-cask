cask 'now' do
  version '1.2.2'
  sha256 '94fbdafdd33c2add2e29b841d433e28fe7eeff49e412966295ef779cdd100aa0'

  # github.com/zeit/now-desktop was verified as official when first introduced to the cask
  url "https://github.com/zeit/now-desktop/releases/download/#{version}/now-desktop-#{version}-mac.zip"
  appcast 'https://github.com/zeit/now-desktop/releases.atom',
          checkpoint: '382c47975468b847bb557bd7926ee6c04e4f52afd4cc2282e2ebf4feca3df1b6'
  name 'Now'
  homepage 'https://zeit.co/now'

  app 'Now.app'

  zap delete: [
                '~/.now.json',
                '~/Library/Application Support/Now',
                '~/Library/Caches/co.zeit.now',
                '~/Library/Caches/co.zeit.now.ShipIt',
                '~/Library/Preferences/co.zeit.now.plist',
                '~/Library/Preferences/co.zeit.now.helper.plist',
              ]
end

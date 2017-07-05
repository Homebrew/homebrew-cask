cask 'now' do
  version '2.0.1'
  sha256 '1f8131d027fd47da3f859a3f0c11f1035ae8d9436962960137bc0cc95a676ef0'

  # github.com/zeit/now-desktop was verified as official when first introduced to the cask
  url "https://github.com/zeit/now-desktop/releases/download/#{version}/now-desktop-#{version}-mac.zip"
  appcast 'https://github.com/zeit/now-desktop/releases.atom',
          checkpoint: '16349895c78f2da8cba80e6c06dddeb788c26705748efa91ff6f9d06487dfdba'
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

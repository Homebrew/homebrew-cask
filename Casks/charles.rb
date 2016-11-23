cask 'charles' do
  version '4.0.2'
  sha256 '303116eec8d31ee954e2744ab7dcf174b6aaeca741bf1496ba7ef1126fa438c7'

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/'

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end

cask 'charles' do
  version '4.0.1'
  sha256 '4e5e6589a3c0b7cebefb70818735a03e6e5f11f497d9c559641238867b2092da'

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  name 'Charles'
  homepage 'https://www.charlesproxy.com/'

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end

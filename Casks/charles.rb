cask :v1 => 'charles' do
  version '3.11'
  sha256 'b31efe7c80464a92984d7a76e8a41df0d766c4047695b083f7278a9668585592'

  url "http://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  name 'Charles'
  homepage 'http://www.charlesproxy.com/'
  license :commercial

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end

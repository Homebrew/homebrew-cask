cask :v1 => 'charles' do
  version '3.11.1'
  sha256 'cdbacc5372851fe69613b676eaf0639dc7e7f82f321479f32efa6dcbecfa6913'

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

cask :v1 => 'charles-java7' do
  version '3.9.3'
  sha256 '817dd2ba6167682563ca62c32dfa32afefab95f7d26f5625c2f82bee7d849e58'

  url "http://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}-openjdk.dmg"
  homepage 'http://www.charlesproxy.com/'
  license :unknown

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end

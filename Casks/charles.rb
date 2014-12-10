cask :v1 => 'charles' do
  version '3.9.3'
  sha256 '84de5c3f233ec6af24f5bab04631daf9ef4af0c549efca8675f9d3946e5aceb8'

  url "http://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}-applejava.dmg"
  homepage 'http://www.charlesproxy.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end

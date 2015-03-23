cask :v1 => 'charles' do
  version '3.10'
  sha256 'ee0a07d6b303a778f98dd37293aa13bce2adf0ad15648e144c1676c21cec3c31'

  url "http://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}-applejava.dmg"
  homepage 'http://www.charlesproxy.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end

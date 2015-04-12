cask :v1 => 'charles' do
  version '3.10.1'
  sha256 '5d94f04d4936dd1dd9293f406457f13a825422dc28c5146f19581de2f8e76c9d'

  url "http://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  name 'Charles'
  homepage 'http://www.charlesproxy.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Charles.app'

  zap :delete => [
                  '~/Library/Application Support/Charles',
                  '~/Library/Preferences/com.xk72.charles.config',
                 ]
end

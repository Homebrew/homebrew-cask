cask :v1 => 'charles' do
  version '3.10.2'
  sha256 'd68be46d7dc9654b4b3b094a2f451226376d7bf3c5d401aecba082b27e0b8b6a'

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

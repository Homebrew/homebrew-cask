cask 'charles' do
  version '4.2'
  sha256 '60f74649848c69673071eb7cb83b941f5fa9a6e29b762a17c69af0597f22e1bf'

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  appcast 'https://www.charlesproxy.com/latest.do',
          checkpoint: 'c84057e14bca4c902bb887688cbb3bec69461b864a5d804b8e1e4e06d3bba148'
  name 'Charles'
  homepage 'https://www.charlesproxy.com/'

  app 'Charles.app'

  uninstall quit: 'com.xk72.Charles'

  zap trash: [
               '~/Library/Application Support/Charles',
               '~/Library/Preferences/com.xk72.Charles.plist',
               '~/Library/Preferences/com.xk72.charles.config',
               '~/Library/Saved Application State/com.xk72.Charles.savedState',
             ]
end

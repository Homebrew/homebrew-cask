cask 'charles' do
  version '4.5'
  sha256 'f3db5284430e336c0217afd2b480075db910d945d4730649fba2e4000dbdf9e4'

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  appcast 'https://www.charlesproxy.com/latest.do'
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

cask 'charles' do
  version '4.2.5'
  sha256 'e1b679dba5ef7928c80a3b4b6a21cdd019c815b5b2bf32e86906c4591ade5f09'

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  appcast 'https://www.charlesproxy.com/latest.do',
          checkpoint: 'af05c85adb0e255ae14fe4f678439f112437b0b618ce6fd619c8dba788377511'
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

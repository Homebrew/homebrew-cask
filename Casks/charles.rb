cask 'charles' do
  version '4.2.1'
  sha256 '6f561490c32c4fad80af34e521a901883cb1e10345c8cb8027fea391d665bf8a'

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  appcast 'https://www.charlesproxy.com/latest.do',
          checkpoint: 'e5d77a995a7d89c4b24498cb8947c3b40e53f4d2c0ba2380796cdb059d237848'
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

cask 'charles' do
  version '4.1.4'
  sha256 'ab1bc4ce5f8da1f57cb8b5a1f9ac8c9c554ec6debd556760afecfbbd3c45b91e'

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  appcast 'https://www.charlesproxy.com/latest.do',
          checkpoint: 'a3914fd7cd415317fc032da8fcb4da08800114b0772bd389d0fdf621626fc61c'
  name 'Charles'
  homepage 'https://www.charlesproxy.com/'

  app 'Charles.app'

  uninstall quit: 'com.xk72.Charles'

  zap delete: '~/Library/Saved Application State/com.xk72.Charles.savedState',
      trash:  [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.Charles.plist',
                '~/Library/Preferences/com.xk72.charles.config',
              ]
end

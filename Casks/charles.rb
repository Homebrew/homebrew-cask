cask 'charles' do
  version '4.1.2'
  sha256 'fdee209883d06b2fd17b6fde5d3b4105a137ccae8b014b448957d9143325cecf'

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  appcast 'https://www.charlesproxy.com/latest.do',
          checkpoint: 'b3bb6f691586de9019e3cc79bc93f052fe628911cf38bff77319a05242cc7fec'
  name 'Charles'
  homepage 'https://www.charlesproxy.com/'

  app 'Charles.app'

  zap delete: [
                '~/Library/Application Support/Charles',
                '~/Library/Preferences/com.xk72.Charles.plist',
                '~/Library/Preferences/com.xk72.charles.config',
                '~/Library/Saved Application State/com.xk72.Charles.savedState',
              ]
end

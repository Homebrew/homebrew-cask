cask 'charles' do
  version '4.0.2'
  sha256 '303116eec8d31ee954e2744ab7dcf174b6aaeca741bf1496ba7ef1126fa438c7'

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  appcast 'https://www.charlesproxy.com/latest.do',
          checkpoint: 'c6d3fb057b198f1d0563d4218d4e36b48df752251aabffe78ea60aac5a72c7a2'
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

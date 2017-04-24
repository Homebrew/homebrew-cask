cask 'charles' do
  version '4.1.1'
  sha256 '70dd95695f46d578753330b5f26d1b0f2f09868223237401af84e832a18b2f04'

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  appcast 'https://www.charlesproxy.com/latest.do',
          checkpoint: '9737915fce5e934ea348658fccb82a4c532157d2161bb032a240c2837b8f66cb'
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

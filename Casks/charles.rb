cask 'charles' do
  version '4.1.3'
  sha256 '1db01ba6dac1cd8aee430fe65645dec230315f1692f168d0212926e764988f41'

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  appcast 'https://www.charlesproxy.com/latest.do',
          checkpoint: 'd91a33c9b99340e3e1f7ba48f043a10f6e9719c885ffecaa4fd8108957ecaf72'
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

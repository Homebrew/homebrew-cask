cask 'charles' do
  version '4.1'
  sha256 '27d8843b5a7da976215f28440918186093a14b4f9e4630199b31aaaa0b60142a'

  url "https://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}.dmg"
  appcast 'https://www.charlesproxy.com/latest.do',
          checkpoint: 'ccc8c8540a4da7ae55474bbcafcf335a2dde73265b3bbd29ffa047c08777f307'
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

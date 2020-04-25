cask 'gitfiend' do
  version '0.22.8'
  sha256 '8d0eaaf47074c28d97f8fca7780e11f868adb8ab97f18c8e196f54817a86237d'

  url "https://gitfiend.com/resources/GitFiend-#{version}.dmg"
  appcast 'https://gitfiend.com/app-info'
  name 'GitFiend'
  homepage 'https://gitfiend.com/'

  auto_updates true

  app 'GitFiend.app'

  zap trash: [
               '~/Library/Application Support/GitFiend',
               '~/Library/Preferences/com.tobysuggate.gitfiend.plist',
               '~/Library/Saved Application State/com.tobysuggate.gitfiend.savedState',
             ]
end

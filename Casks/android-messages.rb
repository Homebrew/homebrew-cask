cask 'android-messages' do
  version '3.0.0'
  sha256 'c3a3e3c98373c6098d93b857e517e5f6afc1ea37129d2b62811fd5b4ed315703'

  url "https://github.com/chrisknepper/android-messages-desktop/releases/download/v#{version}/Android-Messages-#{version}.dmg"
  appcast 'https://github.com/chrisknepper/android-messages-desktop/releases.atom'
  name 'Android Messages Desktop'
  homepage 'https://github.com/chrisknepper/android-messages-desktop'

  app 'Android Messages.app'

  zap trash: '~/Library/Application Support/Android Messages'
end

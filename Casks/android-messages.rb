cask 'android-messages' do
  version '0.9.1'
  sha256 'd40483a24fd902498689cbaa911fca73ac510d1f557e76838292a4e0de1df7ef'

  url "https://github.com/chrisknepper/android-messages-desktop/releases/download/v#{version}/android-messages-desktop-#{version}.dmg"
  appcast 'https://github.com/chrisknepper/android-messages-desktop/releases.atom'
  name 'Android Messages Desktop'
  homepage 'https://github.com/chrisknepper/android-messages-desktop'

  app 'Android Messages.app'

  zap trash: '~/Library/Application Support/Android Messages'
end

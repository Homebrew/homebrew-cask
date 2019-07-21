cask 'android-messages' do
  version '2.0.0'
  sha256 'dd8f2d6391d4ae1a04677acfdad6a6032633d5893495de28c526fb824740d49c'

  url "https://github.com/chrisknepper/android-messages-desktop/releases/download/v#{version}/android-messages-desktop-#{version}.dmg"
  appcast 'https://github.com/chrisknepper/android-messages-desktop/releases.atom'
  name 'Android Messages Desktop'
  homepage 'https://github.com/chrisknepper/android-messages-desktop'

  app 'Android Messages.app'

  zap trash: '~/Library/Application Support/Android Messages'
end

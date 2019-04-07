cask 'android-messages' do
  version '1.0.0'
  sha256 '692cd19859a3fbcd0018634698ffcb2f10c8e89d83e0208185954f76e13331b3'

  url "https://github.com/chrisknepper/android-messages-desktop/releases/download/v#{version}/android-messages-desktop-#{version}.dmg"
  appcast 'https://github.com/chrisknepper/android-messages-desktop/releases.atom'
  name 'Android Messages Desktop'
  homepage 'https://github.com/chrisknepper/android-messages-desktop'

  app 'Android Messages.app'

  zap trash: '~/Library/Application Support/Android Messages'
end

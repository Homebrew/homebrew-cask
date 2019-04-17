cask 'android-messages' do
  version '1.0.1'
  sha256 'b35ba875dbc9807bb2d350949959ae99f4a0b085149a20826d77b1fffe4df1f4'

  url "https://github.com/chrisknepper/android-messages-desktop/releases/download/v#{version}/android-messages-desktop-#{version}.dmg"
  appcast 'https://github.com/chrisknepper/android-messages-desktop/releases.atom'
  name 'Android Messages Desktop'
  homepage 'https://github.com/chrisknepper/android-messages-desktop'

  app 'Android Messages.app'

  zap trash: '~/Library/Application Support/Android Messages'
end

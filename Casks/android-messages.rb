cask 'android-messages' do
  version '0.9.0'
  sha256 '777521de43f83a9cad0ced32242087a593b65fd59ae1bc9e435331cdeffc1e6e'

  url "https://github.com/chrisknepper/android-messages-desktop/releases/download/v#{version}/android-messages-desktop-#{version}.dmg"
  appcast 'https://github.com/chrisknepper/android-messages-desktop/releases.atom'
  name 'Android Messages Desktop'
  homepage 'https://github.com/chrisknepper/android-messages-desktop'

  app 'Android Messages.app'

  zap trash: '~/Library/Application Support/Android Messages'
end

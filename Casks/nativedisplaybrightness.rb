cask 'nativedisplaybrightness' do
  version '0.0.5'
  sha256 '2b79979892170036a5170746ca542518f20c980f5b5b08e067debd3e6fd14e11'

  url "https://github.com/Bensge/NativeDisplayBrightness/releases/download/v#{version}/NativeDisplayBrightness_#{version.dots_to_underscores}.app.zip"
  appcast 'https://github.com/Bensge/NativeDisplayBrightness/releases.atom',
          checkpoint: '6f2f9f092cb7808e8b0c1a75a9ee4b8c442438c1f0b0309f9ff129afce148a1c'
  name 'NativeDisplayBrightness'
  homepage 'https://github.com/Bensge/NativeDisplayBrightness/'

  accessibility_access true

  app 'NativeDisplayBrightness.app'

  uninstall login_item: 'NativeDisplayBrightness',
            quit:       'com.bensge.NativeDisplayBrightness'
end

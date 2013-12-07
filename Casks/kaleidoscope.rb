class Kaleidoscope < Cask
  url 'http://cdn.kaleidoscopeapp.com/releases/Kaleidoscope-2.0.2-116.zip'
  homepage 'http://www.kaleidoscopeapp.com/'
  version '2.0.2_116'
  sha1 '4a35f6e826f0553e6d7ed02486617589f262f7fc'
  link 'Kaleidoscope.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system 'defaults write com.blackpixel.kaleidoscope moveToApplicationsFolderAlertSuppress -bool true'
  end
end

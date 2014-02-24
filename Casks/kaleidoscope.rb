class Kaleidoscope < Cask
  url 'http://cdn.kaleidoscopeapp.com/releases/Kaleidoscope-2.0.2-116.zip'
  homepage 'http://www.kaleidoscopeapp.com/'
  version '2.0.2_116'
  sha256 '2aad3d41a38fa9ce1cf28a097db056ec8d6e4afa2dc0c6347e7e9b6edd5763d3'
  link 'Kaleidoscope.app'
  binary 'Kaleidoscope.app/Contents/Resources/bin/ksdiff'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system 'defaults write com.blackpixel.kaleidoscope moveToApplicationsFolderAlertSuppress -bool true'
  end
  caveats do
    files_in_usr_local
  end
end

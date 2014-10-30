class Fantastical < Cask
  version '1.3.18'
  sha256 '435d4818b2911eed956322261ba083df2abe9c2b21c63eee46876c23f7925beb'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast.php',
          :sha256 => '3d789ff8dd91c8ebc1b63d2811ec17e0a950433b03605d8c10eef010733cf79a'
  homepage 'http://flexibits.com/fantastical'
  license :unknown

  app 'Fantastical.app'

  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.flexibits.fantastical', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
  zap :delete => '~/Library/Preferences/com.flexibits.fantastical.plist'
end

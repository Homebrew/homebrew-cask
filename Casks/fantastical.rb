class Fantastical < Cask
  version '1.3.17'
  sha256 '4ca0d3b25e8ac1748a1ee126625fe779b0b17474e43775b2f91b806bdcd59bb9'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast.php'
  homepage 'http://flexibits.com/fantastical'

  app 'Fantastical.app'

  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.flexibits.fantastical', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
  zap :delete => '~/Library/Preferences/com.flexibits.fantastical.plist'
end

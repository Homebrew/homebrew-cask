class Fantastical < Cask
  version '1.3.16'
  sha256 '9d71391c4841870fe8e863de5da86f7db032702c8e0c93a17608d5af8769219c'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast.php'
  homepage 'http://flexibits.com/fantastical'

  link 'Fantastical.app'

  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.flexibits.fantastical', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end

class Fantastical < Cask
  url 'http://cdn.flexibits.com/Fantastical_1.3.14.zip'
  homepage 'http://flexibits.com/fantastical'
  version '1.3.14'
  sha256 'ffe5e52bf3f2e348852bd67524596e8f8c0ff3626b83319aa6c38988b5eff3b4'
  link 'Fantastical.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.flexibits.fantastical', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end

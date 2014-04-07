class Fantastical < Cask
  url 'http://cdn.flexibits.com/Fantastical_1.3.13.zip'
  homepage 'http://flexibits.com/fantastical'
  version '1.3.13'
  sha256 'bc0c7077f27dc113a62f8998aa356948941997ee576c2716fcb76363de82160e'
  link 'Fantastical.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.flexibits.fantastical', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end

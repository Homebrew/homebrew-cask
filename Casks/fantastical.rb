class Fantastical < Cask
  url 'http://cdn.flexibits.com/Fantastical_1.3.12.zip'
  homepage 'http://flexibits.com/fantastical'
  version '1.3.12'
  sha256 '37f6b3dd71f911b29f6497d86844f138274dbf7c4b4b02563eb5d22cc1744637'
  link 'Fantastical.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'com.flexibits.fantastical', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end

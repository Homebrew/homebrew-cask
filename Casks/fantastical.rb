class Fantastical < Cask
  url 'http://cdn.flexibits.com/Fantastical_1.3.11.zip'
  homepage 'http://flexibits.com/fantastical'
  version '1.3.11'
  sha256 '9f43184f41228a0807a826ab92ac336b7a090aa75032403aa68ae4b02f56b819'
  link 'Fantastical.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system 'defaults write com.flexibits.fantastical moveToApplicationsFolderAlertSuppress -bool true'
  end
end

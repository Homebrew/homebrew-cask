class Fantastical < Cask
  url 'http://cdn.flexibits.com/Fantastical_1.3.11.zip'
  homepage 'http://flexibits.com/fantastical'
  version '1.3.11'
  sha1 '73522b88b177f42a8217a470fe0a1a09f182286a'
  link 'Fantastical.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system 'defaults write com.flexibits.fantastical moveToApplicationsFolderAlertSuppress -bool true'
  end
end

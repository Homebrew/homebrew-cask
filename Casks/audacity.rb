cask 'audacity' do
  version '2.1.2'
  sha256 :no_check

  url 'https://www.fosshub.com/Audacity.html/audacity-macosx-ub-#{version}.dmg'
  name 'Audacity'
  homepage 'http://www.audacityteam.org/'

  app 'Audacity.app'

end
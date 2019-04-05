cask 'icamsource' do
  version '2.9'
  sha256 'bc04eb17400a21331daee7d5d6b554b32a10ab70d53fe0ba4030c95761785bcd'

  url "https://skjm.com/icam/iCamSource#{version}.dmg"
  appcast 'https://skjm.com/sparkle/iCamSource.xml'
  name 'iCamSource'
  homepage 'https://skjm.com/icam/support.php'

  app 'iCamSource.app'
end

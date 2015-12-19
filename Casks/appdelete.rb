cask 'appdelete' do
  version :latest
  sha256 :no_check

  url 'http://www.reggieashworth.com/downloads/AppDelete.dmg'
  appcast 'http://www.reggieashworth.com/AD4Appcast.xml'
  name 'AppDelete'
  homepage 'http://www.reggieashworth.com/appdelete'
  license :commercial

  app 'AppDelete.app'
end

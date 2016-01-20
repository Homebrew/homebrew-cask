cask 'appdelete' do
  version '4.2.2'
  sha256 '567da30120737f1ffe67478ad7008023abfd0493212cdcead718a60d34e9da8a'

  url 'http://www.reggieashworth.com/downloads/AppDelete.dmg'
  appcast 'http://www.reggieashworth.com/AD4Appcast.xml',
          checkpoint: '32508eeff6ce145a94085eaabdef85824640d323976d2f2fba55e80ac79ae7a8'
  name 'AppDelete'
  homepage 'http://www.reggieashworth.com/appdelete'
  license :commercial

  app 'AppDelete.app'
end

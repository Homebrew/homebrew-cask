cask 'appdelete' do
  version '4.2.3'
  sha256 '1bae40dba58747d07660793f6c5842b50dbf58dad1649631bd3ed721132a36a8'

  url 'http://www.reggieashworth.com/downloads/AppDelete.dmg'
  appcast 'http://www.reggieashworth.com/AD4Appcast.xml',
          checkpoint: '6016650f59a23e1c1eeeeb204d7d27ad1efa5578071b9a3780254a77a24f7946'
  name 'AppDelete'
  homepage 'http://www.reggieashworth.com/appdelete'
  license :commercial

  app 'AppDelete.app'
end

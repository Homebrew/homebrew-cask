cask 'appdelete' do
  version '4.2.7'
  sha256 'b72e95d804446f33fa297a088edb6f65b6b72c9c2c4d3c6718004d04f331e612'

  url 'http://www.reggieashworth.com/downloads/AppDelete.dmg'
  appcast 'http://www.reggieashworth.com/AD4Appcast.xml',
          checkpoint: '52e80243071ab32d1cd4809b750116cfedc41e07925c3958c71bc12576520418'
  name 'AppDelete'
  homepage 'http://www.reggieashworth.com/appdelete'
  license :commercial

  app 'AppDelete.app'
end

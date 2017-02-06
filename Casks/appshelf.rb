cask 'appshelf' do
  version '1.6'
  sha256 'cac1b74b9747cb19dabff7b166322cfc2abfcacb001de8075235a4ac1efc1fd4'

  url "http://www.kedisoft.com/dl/appshelf/AppShelf-#{version}.dmg"
  name 'AppShelf'
  homepage 'http://www.kedisoft.com/appshelf/'

  app 'AppShelf.app'
end

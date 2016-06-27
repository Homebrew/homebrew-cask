cask 'appdelete' do
  version '4.2.6'
  sha256 'c7d74df75671b76109accc720f0e3b58c505854a6c33a3d6fd18833753e8f239'

  url 'http://www.reggieashworth.com/downloads/AppDelete.dmg'
  appcast 'http://www.reggieashworth.com/AD4Appcast.xml',
          checkpoint: 'f71c04fce74afd1a123fefbc70f88bd5d05ec4b5f2ab37b908519b1317ea603f'
  name 'AppDelete'
  homepage 'http://www.reggieashworth.com/appdelete'
  license :commercial

  app 'AppDelete.app'
end

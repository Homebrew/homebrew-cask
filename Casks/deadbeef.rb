cask 'deadbeef' do
  version '0.7.2-2'
  sha256 'cfac56c37d55ccebf934d3b8c0a2b0ae7acf809e9c5aa5dcf6ff0b5a281a4e5b'

  url "https://downloads.sourceforge.net/deadbeef/deadbeef-static_#{version}_i686.tar.bz2"
  appcast 'https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/master',
          checkpoint: 'ed8178e68dd11ce0d03d31f8864e4eaa95cf45112764691f0b82793fcbd4dcb2'
  name 'DeaDBeeF'
  homepage 'http://deadbeef.sourceforge.net/'

  app 'deadbeef.app'
end

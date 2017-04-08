cask 'deadbeef' do
  version '1.0'
  sha256 '0357c19172d560c7e8eb24f12ca77fffaf29b1608cde812f145c39ede7086364'

  url 'https://downloads.sourceforge.net/deadbeef/travis/osx/master/deadbeef-devel-osx-x86_64.zip'
  appcast 'https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/master',
          checkpoint: '4ad50dde5f5017cee4a8df60104ecf48c5c4b72a8d2550d77f0b1c047c568d27'
  name 'DeaDBeeF'
  homepage 'http://deadbeef.sourceforge.net/'

  app 'deadbeef.app'
end

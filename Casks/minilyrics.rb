class Minilyrics < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.crintsoft.com/download/MiniLyrics.dmg'
  homepage 'http://www.crintsoft.com/'

  install 'MiniLyrics.pkg'
  uninstall :pkgutil => 'com.crintsoft.MiniLyrics.pkg'
end

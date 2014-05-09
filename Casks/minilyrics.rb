class Minilyrics < Cask
  url 'http://www.crintsoft.com/download/MiniLyrics.dmg'
  homepage 'http://www.crintsoft.com/'
  version 'latest'
  sha256 :no_check
  install 'MiniLyrics.pkg'
  uninstall :pkgutil => 'com.crintsoft.MiniLyrics.pkg'
end

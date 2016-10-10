cask 'minilyrics' do
  version :latest
  sha256 :no_check

  url 'http://www.crintsoft.com/download/MiniLyrics.dmg'
  name 'MiniLyrics'
  homepage 'http://www.crintsoft.com/'

  pkg 'MiniLyrics.pkg'

  uninstall pkgutil: 'com.crintsoft.MiniLyrics.pkg'
end

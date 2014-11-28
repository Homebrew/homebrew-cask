cask :v1 => 'minilyrics' do
  version :latest
  sha256 :no_check

  url 'http://www.crintsoft.com/download/MiniLyrics.dmg'
  homepage 'http://www.crintsoft.com/'
  license :unknown

  pkg 'MiniLyrics.pkg'

  uninstall :pkgutil => 'com.crintsoft.MiniLyrics.pkg'
end

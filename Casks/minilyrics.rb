cask :v1 => 'minilyrics' do
  version :latest
  sha256 :no_check

  url 'http://www.crintsoft.com/download/MiniLyrics.dmg'
  homepage 'http://www.crintsoft.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'MiniLyrics.pkg'

  uninstall :pkgutil => 'com.crintsoft.MiniLyrics.pkg'
end

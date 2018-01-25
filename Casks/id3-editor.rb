cask 'id3-editor' do
  version '1.24.38'
  sha256 '58dcfcf33dde6d945d3111bf4b82d1813451e8db4cf4ecc259f27ade346b414a'

  url "http://www.pa-software.com/release/ID3Editor.ub.#{version}.dmg"
  name 'ID3 Editor'
  homepage 'http://www.pa-software.com/id3editor/'

  app 'ID3 Editor.app'
end

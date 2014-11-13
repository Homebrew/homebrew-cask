cask :v1 => 'comictagger' do
  version '1.1.10-beta'
  sha256 'f59514cfd15e64a8c595c4ad9707266b2c01d7744ca9f5836bee484954ce2fa6'

  url "https://comictagger.googlecode.com/files/ComicTagger-#{version}.dmg"
  homepage 'http://code.google.com/p/comictagger/'
  license :oss

  app 'ComicTagger.app'
end

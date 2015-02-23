cask :v1 => 'comictagger' do
  version '1.1.15-beta'
  sha256 '6640834d966c1cc760de6aa32729bf139bf06727f8d650a4534cdf780f084960'

  url "https://comictagger.googlecode.com/files/ComicTagger-#{version}.dmg"
  name 'ComicTagger'
  homepage 'http://code.google.com/p/comictagger/'
  license :oss

  app 'ComicTagger.app'
end

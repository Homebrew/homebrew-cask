cask :v1 => 'comictagger' do
  version '1.1.15-beta'
  sha256 '6640834d966c1cc760de6aa32729bf139bf06727f8d650a4534cdf780f084960'

  # googledrive.com is the official download host per the vendor homepage
  url "https://googledrive.com/host/0Bw4IursaqWhhOHF6Wk9ab3FkejQ/#{version}/ComicTagger-#{version}.dmg"
  name 'ComicTagger'
  homepage 'https://code.google.com/p/comictagger/'
  license :apache

  app 'ComicTagger.app'
end

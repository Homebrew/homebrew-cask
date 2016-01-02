cask 'comictagger' do
  version '1.1.15-beta'
  sha256 '6640834d966c1cc760de6aa32729bf139bf06727f8d650a4534cdf780f084960'

  url "https://github.com/davide-romanini/comictagger/releases/download/#{version}/ComicTagger-#{version}.dmg"
  name 'ComicTagger'
  homepage 'https://github.com/davide-romanini/comictagger'
  license :apache

  app 'ComicTagger.app'
end

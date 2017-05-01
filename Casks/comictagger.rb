cask 'comictagger' do
  version '1.1.15-beta'
  sha256 '6640834d966c1cc760de6aa32729bf139bf06727f8d650a4534cdf780f084960'

  url "https://github.com/davide-romanini/comictagger/releases/download/#{version}/ComicTagger-#{version}.dmg"
  appcast 'https://github.com/davide-romanini/comictagger/releases.atom',
          checkpoint: 'f7b51d43427127ee247bb47425d9419c8cd59df043063fa29345bdb12928900d'
  name 'ComicTagger'
  homepage 'https://github.com/davide-romanini/comictagger'

  app 'ComicTagger.app'
end

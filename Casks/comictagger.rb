cask 'comictagger' do
  version '1.2.0'
  sha256 'f33a0bb5bf0b995af31d45388dcb8b9cd77ca86cbdc9dd52287027ccdda423cc'

  url "https://github.com/davide-romanini/comictagger/releases/download/#{version}%2B2/ComicTagger-#{version}-osx-10.12.6-x86_64.app.zip"
  appcast 'https://github.com/davide-romanini/comictagger/releases.atom'
  name 'ComicTagger'
  homepage 'https://github.com/davide-romanini/comictagger'

  app "ComicTagger.app"
end

cask 'comictagger' do
  version '1.2.1'
  sha256 '31b36527b9415544e2f956c849309320bb955524eaa1ebddab6b97d55c5da4f8'

  url "https://github.com/davide-romanini/comictagger/releases/download/#{version}/ComicTagger-#{version}-osx-10.12.6-x86_64.app.zip"
  appcast 'https://github.com/davide-romanini/comictagger/releases.atom'
  name 'ComicTagger'
  homepage 'https://github.com/davide-romanini/comictagger'

  app 'ComicTagger.app'
end

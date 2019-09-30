cask 'comictagger' do
  version '1.2.2'
  sha256 '93d541490994e8dd6ad88c7179bffff607211c21c9c127e43e5dab3090c2b164'

  url "https://github.com/davide-romanini/comictagger/releases/download/#{version}/ComicTagger-#{version}-osx-10.12.6-x86_64.app.zip"
  appcast 'https://github.com/davide-romanini/comictagger/releases.atom'
  name 'ComicTagger'
  homepage 'https://github.com/davide-romanini/comictagger'

  app 'ComicTagger.app'
end

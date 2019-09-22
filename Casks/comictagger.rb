cask 'comictagger' do
  version '1.1.32-rc1'
  sha256 'ef028155c1c7e11104ceaa5c4622ceb6b4e305c9b47085b859034ee63c6095be'

  url "https://github.com/davide-romanini/comictagger/releases/download/#{version}/ComicTagger-#{version}-macOS-mojave-x86_64.zip"
  appcast 'https://github.com/davide-romanini/comictagger/releases.atom'
  name 'ComicTagger'
  homepage 'https://github.com/davide-romanini/comictagger'

  app 'ComicTagger-#{version}.app'
end

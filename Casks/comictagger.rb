cask 'comictagger' do
  version '1.1.16-beta-rc2'
  sha256 '3d2d883371a22074205ef96f98fdd0ccc35399f9439bc235b6f4c1c21e856bc5'

  url "https://github.com/davide-romanini/comictagger/releases/download/#{version}/ComicTagger-#{version}.dmg"
  appcast 'https://github.com/davide-romanini/comictagger/releases.atom'
  name 'ComicTagger'
  homepage 'https://github.com/davide-romanini/comictagger'

  app 'ComicTagger.app'
end

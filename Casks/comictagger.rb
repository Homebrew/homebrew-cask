cask 'comictagger' do
  version '1.1.16-beta-rc2'
  sha256 '3d2d883371a22074205ef96f98fdd0ccc35399f9439bc235b6f4c1c21e856bc5'

  url "https://github.com/davide-romanini/comictagger/releases/download/#{version}/ComicTagger-#{version}.dmg"
  appcast 'https://github.com/davide-romanini/comictagger/releases.atom',
          checkpoint: '6f8c330b4be724d22619da7536028e38c4a86d126fd636ce8e1bd64b3451beb0'
  name 'ComicTagger'
  homepage 'https://github.com/davide-romanini/comictagger'

  app 'ComicTagger.app'
end

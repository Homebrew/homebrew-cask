cask 'reveal' do
  version '13'
  sha256 '1cdae698fe0dd3d7d0f457fb572fc063dc006efa0c9a9b59e6beabebb65099ff'

  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'https://revealapp.com/download/',
          checkpoint: 'ede640ade1401428ea099c57c18a40a08daafecedd9abe833a87139053d0e30d'
  name 'Reveal'
  homepage 'https://revealapp.com/'

  depends_on macos: '>= :sierra'

  app 'Reveal.app'
end

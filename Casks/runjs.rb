cask 'runjs' do
  version '1.6.0'
  sha256 'fd825b6bccdc164da3f4a1e71612f425c648baa68c59c6cc861d282b6560b2eb'

  # github.com/lukehaas/runjs was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast 'https://github.com/lukehaas/runjs/releases.atom'
  name 'RunJS'
  homepage 'https://projects.lukehaas.me/runjs/'

  app 'RunJS.app'
end

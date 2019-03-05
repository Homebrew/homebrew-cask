cask 'runjs' do
  version '1.3.1'
  sha256 'e88d91e0e9e4a2dd9056b614cebffefb3f1becf5cea79affa79b58aa662a4990'

  # github.com/lukehaas/runjs was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast 'https://github.com/lukehaas/runjs/releases.atom'
  name 'RunJS'
  homepage 'https://projects.lukehaas.me/runjs/'

  app 'RunJS.app'
end

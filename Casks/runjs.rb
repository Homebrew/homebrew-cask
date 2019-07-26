cask 'runjs' do
  version '1.5.4'
  sha256 'd5164aba5159196d42b4208cabe0f0689b379f721f82d3b3df2f10ccdfc0c152'

  # github.com/lukehaas/runjs was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast 'https://github.com/lukehaas/runjs/releases.atom'
  name 'RunJS'
  homepage 'https://projects.lukehaas.me/runjs/'

  app 'RunJS.app'
end

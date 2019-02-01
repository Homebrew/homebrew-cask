cask 'runjs' do
  version '1.2.2'
  sha256 '08c6be85f5d2dc2015bb227f08a2075f5b2483beb2869b2e293aca8cca798c60'

  # github.com/lukehaas/runjs was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast 'https://github.com/lukehaas/runjs/releases.atom'
  name 'RunJS'
  homepage 'https://projects.lukehaas.me/runjs/'

  app 'RunJS.app'
end

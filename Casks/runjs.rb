cask 'runjs' do
  version '1.4.0'
  sha256 'f1d921566740edd3ffe4725b00fd57ac1155479d307d07466cf77c751fe83cf2'

  # github.com/lukehaas/runjs was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast 'https://github.com/lukehaas/runjs/releases.atom'
  name 'RunJS'
  homepage 'https://projects.lukehaas.me/runjs/'

  app 'RunJS.app'
end

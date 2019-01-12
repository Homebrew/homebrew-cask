cask 'runjs' do
  version '1.2.0'
  sha256 '04ea68ab44456a49f7e214d3fffa369c83503086e1a7f18ca59c99e7d5dcbf5a'

  # github.com/lukehaas/runjs was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast 'https://github.com/lukehaas/runjs/releases.atom'
  name 'RunJS'
  homepage 'https://projects.lukehaas.me/runjs/'

  app 'RunJS.app'
end

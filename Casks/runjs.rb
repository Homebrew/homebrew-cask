cask 'runjs' do
  version '1.7.0'
  sha256 '601a1f3b7d8572022127f9a5b5b7323efa4b4f88a91085857ebe68b91295d68e'

  # github.com/lukehaas/runjs was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast 'https://github.com/lukehaas/runjs/releases.atom'
  name 'RunJS'
  homepage 'https://projects.lukehaas.me/runjs/'

  app 'RunJS.app'
end

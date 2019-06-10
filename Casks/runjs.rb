cask 'runjs' do
  version '1.5.1'
  sha256 '2eb5c2f191fc729fabd77640df39e20f20ea95973d4af296fbd53abbcb735307'

  # github.com/lukehaas/runjs was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast 'https://github.com/lukehaas/runjs/releases.atom'
  name 'RunJS'
  homepage 'https://projects.lukehaas.me/runjs/'

  app 'RunJS.app'
end

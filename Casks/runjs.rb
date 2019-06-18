cask 'runjs' do
  version '1.5.3'
  sha256 '40350b0b404778a8ab7da4dabcd2b226585fee3b08299a87ba325505fecdf0ba'

  # github.com/lukehaas/runjs was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast 'https://github.com/lukehaas/runjs/releases.atom'
  name 'RunJS'
  homepage 'https://projects.lukehaas.me/runjs/'

  app 'RunJS.app'
end

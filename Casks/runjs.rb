cask 'runjs' do
  version '1.5.0'
  sha256 'a4cf402ec5cd0bd4d64bf2ad3833069b0d069123162beeb54be587e791b94b0e'

  # github.com/lukehaas/runjs was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast 'https://github.com/lukehaas/runjs/releases.atom'
  name 'RunJS'
  homepage 'https://projects.lukehaas.me/runjs/'

  app 'RunJS.app'
end

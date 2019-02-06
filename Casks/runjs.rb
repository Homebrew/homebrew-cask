cask 'runjs' do
  version '1.2.3'
  sha256 '01b5411ea59c9a9439f95f84b528975b33e7b7fdb7604b57524e600a97fb4359'

  # github.com/lukehaas/runjs was verified as official when first introduced to the cask
  url "https://github.com/lukehaas/runjs/releases/download/v#{version}/RunJS-#{version}.dmg"
  appcast 'https://github.com/lukehaas/runjs/releases.atom'
  name 'RunJS'
  homepage 'https://projects.lukehaas.me/runjs/'

  app 'RunJS.app'
end

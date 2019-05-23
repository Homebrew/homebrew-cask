cask 'mob' do
  version '0.2.1'
  sha256 '18ab080133100b87982b5d54af5dcb3d5bff18b99d0635603395600621a0c68d'

  url "https://github.com/zenghongtu/Mob/releases/download/v#{version}/Mob-#{version}-mac.dmg"
  appcast 'https://github.com/zenghongtu/Mob/releases.atom'
  name 'Mob'
  homepage 'https://github.com/zenghongtu/Mob'

  app 'Mob.app'

  zap trash: '~/Library/Application Support/mob'
end

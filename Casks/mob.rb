cask 'mob' do
  version '0.1.4'
  sha256 '1eca1a36e2fbd71a002a9adb63c8204c87ce101cb531e4c048942c4cca1a81af'

  url "https://github.com/zenghongtu/Mob/releases/download/v#{version}/Mob-#{version}-mac.dmg"
  appcast 'https://github.com/zenghongtu/Mob/releases.atom'
  name 'Mob'
  homepage 'https://github.com/zenghongtu/Mob'

  app 'Mob.app'

  zap trash: '~/Library/Application Support/mob'
end

cask 'mob' do
  version '0.2.0'
  sha256 '59a685bb17fbcacfae4ea75afdd3a47ff123192e383d7cd0a7d97c186c57e0d0'

  url "https://github.com/zenghongtu/Mob/releases/download/v#{version}/Mob-#{version}-mac.dmg"
  appcast 'https://github.com/zenghongtu/Mob/releases.atom'
  name 'Mob'
  homepage 'https://github.com/zenghongtu/Mob'

  app 'Mob.app'

  zap trash: '~/Library/Application Support/mob'
end

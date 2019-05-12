cask 'mob' do
  version '0.1.2'
  sha256 '5506cfce02ed8d9f6554a27af5f0d75617e0496dd3174a695de8ed943428c351'

  url "https://github.com/zenghongtu/Mob/releases/download/v#{version}/Mob-#{version}-mac.dmg"
  name 'Mob'
  homepage 'https://github.com/zenghongtu/Mob'

  app 'Mob.app'
  zap trash: [
               '~/Library/Application Support/mob',
             ]
end

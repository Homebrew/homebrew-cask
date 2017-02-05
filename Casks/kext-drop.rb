cask 'kext-drop' do
  version :latest
  sha256 :no_check

  url 'https://cindori.org/kextdrop/KextDrop.dmg',
      user_agent: :fake
  name 'Kext Drop'
  homepage 'https://cindori.org/kextdrop/'

  app 'Kext Drop.app'
end

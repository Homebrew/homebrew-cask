cask 'kext-drop' do
  version :latest
  sha256 :no_check

  url 'https://cindori.org/kextdrop/KextDrop.dmg',
      user_agent: :fake
  name 'Kext Drop'
  homepage 'https://www.cindori.org/software/kextdrop/'
  license :gratis

  app 'Kext Drop.app'
end

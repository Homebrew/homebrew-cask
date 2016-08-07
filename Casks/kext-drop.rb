cask 'kext-drop' do
  version :latest
  sha256 :no_check

  url 'http://cindori.org/kextdrop/KextDrop.dmg'
  name 'Kext Drop'
  homepage 'https://www.cindori.org/software/kextdrop/'
  license :gratis

  app 'Kext Drop.app'
end

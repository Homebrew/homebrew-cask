cask 'kext-drop' do
  version :latest
  sha256 :no_check

  url 'http://www.groths.org/kextdrop/KextDrop.dmg'
  appcast 'http://groths.org/kextdrop/updates/update.xml',
          :sha256 => 'd5b003997cc15748194d5a6062432826c2da34b02d9ca136b2e3635528181528'
  name 'Kext Drop'
  homepage 'http://www.groths.org/software/kextdrop/'
  license :gratis

  app 'Kext Drop.app'
end

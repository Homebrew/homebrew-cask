class KextDrop < Cask
  url 'http://www.groths.org/kextdrop/KextDrop.dmg'
  appcast 'http://groths.org/kextdrop/updates/update.xml'
  homepage 'http://www.groths.org/software/kextdrop/'
  version 'latest'
  sha256 :no_check
  link 'Kext Drop.app'
end

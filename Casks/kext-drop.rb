cask :v1 => 'kext-drop' do
  version :latest
  sha256 :no_check

  url 'http://www.groths.org/kextdrop/KextDrop.dmg'
  appcast 'http://groths.org/kextdrop/updates/update.xml'
  homepage 'http://www.groths.org/software/kextdrop/'
  license :unknown

  app 'Kext Drop.app'
end

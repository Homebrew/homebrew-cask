cask 'aladin' do
  version :latest
  sha256 :no_check

  url 'http://aladin.u-strasbg.fr/java/download/Aladin.dmg'
  name 'Aladin Desktop'
  homepage 'http://aladin.u-strasbg.fr/AladinDesktop/'
  license :gpl

  app 'Aladin.app'
end

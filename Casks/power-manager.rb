class PowerManager < Cask
  url 'https://www.dssw.co.uk/powermanager/dsswpowermanager.dmg'
  homepage 'https://www.dssw.co.uk/powermanager'
  version '4.1.8'
  sha1 '95067f17b34bbac032570eee82f9a275765fa302'
  install 'DssW Power Manager.pkg'
  uninstall :script => '/Library/Application Support/Power Manager/Remove Power Manager.app/Contents/Resources/Remove Power Manager.sh'
end

class PowerManager < Cask
  url 'https://www.dssw.co.uk/powermanager/dsswpowermanager.dmg'
  homepage 'https://www.dssw.co.uk/powermanager'
  version 'latest'
  no_checksum
  install 'DssW Power Manager.pkg'
  uninstall :script => '/Library/Application Support/Power Manager/Remove Power Manager.app/Contents/Resources/Remove Power Manager.sh'
end

cask :v1 => 'power-manager' do
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/powermanager/dsswpowermanager.dmg'
  homepage 'https://www.dssw.co.uk/powermanager'
  license :unknown

  pkg 'DssW Power Manager.pkg'
  uninstall :script => '/Library/Application Support/Power Manager/Remove Power Manager.app/Contents/Resources/Remove Power Manager.sh'
end

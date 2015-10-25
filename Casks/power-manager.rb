cask :v1 => 'power-manager' do
  version :latest
  sha256 :no_check

  url 'https://www.dssw.co.uk/powermanager/dsswpowermanager.dmg'
  appcast 'http://version.dssw.co.uk/powermanager/application',
          :sha256 => '8a476c045add431b90ad47eb0bd6317bac80696e74b6c1a5e6f4dee6e172f651'
  name 'Power Manager'
  homepage 'https://www.dssw.co.uk/powermanager'
  license :commercial

  pkg 'DssW Power Manager.pkg'

  uninstall :script => '/Library/Application Support/Power Manager/Remove Power Manager.app/Contents/Resources/Remove Power Manager.sh'
end

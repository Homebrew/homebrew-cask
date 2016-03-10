cask 'power-manager' do
  version '4.5.1'
  sha256 '154bbf674e2aee6f482d5df6952460f7dc6d01e04a45ab6ddd481f50daa8d7ca'

  url "http://www.dssw.co.uk/powermanager/dsswpowermanager-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/application',
          checkpoint: '603e0ad871c89bb1370a33575da47a700878348af1c74107e3c26d4d8efa5924'
  name 'Power Manager'
  homepage 'https://www.dssw.co.uk/powermanager'
  license :commercial

  pkg 'DssW Power Manager.pkg'

  uninstall script: '/Library/Application Support/Power Manager/Remove Power Manager.app/Contents/Resources/Remove Power Manager.sh'
end

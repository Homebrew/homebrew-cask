cask 'menumeters-emcrisostomo-fork' do
    version '1.9.7+emc'
    sha256 '9d4fa909eee01939be5a851502e3f77bbf990af3e228fbeb14a4af7d8fde5862'
  
    url 'https://github.com/emcrisostomo/MenuMeters/releases/download/1.9.7%2Bemc/MenuMeters-1.9.7+emc.dmg'
    appcast 'https://github.com/emcrisostomo/MenuMeters/releases'
    name 'Menumeters (emcrisostomo fork)'
    homepage 'https://emcrisostomo.github.io/MenuMeters/'
  
    pkg 'MenuMeters.pkg'
  
    uninstall pkgutil: 'com.yujitach.MenuMeters'

  end
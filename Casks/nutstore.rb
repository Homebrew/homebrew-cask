class Nutstore < Cask
  version 'latest'
  sha256 :no_check

  url 'https://jianguoyun.com/static/exe/installer/NutstoreOSXInstaller.dmg'
  homepage 'https://jianguoyun.com'

  app 'Nutstore.app'
end

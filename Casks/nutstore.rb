cask :v1 => 'nutstore' do
  version :latest
  sha256 :no_check

  url 'https://jianguoyun.com/static/exe/installer/NutstoreOSXInstaller.dmg'
  name 'Nutstore'
  homepage 'https://jianguoyun.com'
  license :gratis

  app 'Nutstore.app'
end

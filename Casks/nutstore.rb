cask :v1 => 'nutstore' do
  version :latest
  sha256 :no_check

  url 'https://jianguoyun.com/static/exe/installer/NutstoreOSXInstaller.dmg'
  homepage 'https://jianguoyun.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Nutstore.app'
end

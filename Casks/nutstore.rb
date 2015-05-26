cask :v1 => 'nutstore' do
  version :latest
  sha256 :no_check

  url 'https://jianguoyun.com/static/exe/installer/NutstoreOSXInstaller.dmg'
  name 'Nutstore'
  homepage 'https://jianguoyun.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Nutstore.app'
end

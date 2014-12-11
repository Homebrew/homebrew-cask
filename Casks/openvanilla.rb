cask :v1 => 'openvanilla' do
  version '1.0.11'
  sha256 '15c10b53ad4919226b317ef347f726b53ade1423ae9491a6526bd160050061ac'

  url "https://app.openvanilla.org/file/openvanilla/OpenVanilla-Installer-Mac-#{version}.zip"
  homepage 'http://openvanilla.org/'
  license :unknown    # todo: improve this machine-generated value

  input_method 'OpenVanillaInstaller.app/Contents/Resources/OpenVanilla.app'
  caveats do
    logout
  end
end

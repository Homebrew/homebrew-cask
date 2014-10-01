class Openvanilla < Cask
  version '1.0.10'
  sha256 '7263f7518f79c766aae6f2029fe08858d4c8226bf83810f7b0c920b7e0989d91'

  url "http://dl.openvanilla.org/file/openvanilla/OpenVanilla-Installer-Mac-#{version}.zip"
  homepage 'http://openvanilla.org/'
  license :unknown

  input_method 'OpenVanillaInstaller.app/Contents/Resources/OpenVanilla.app'
  caveats do
    logout
  end
end

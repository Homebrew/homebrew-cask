cask 'openvanilla' do
  version '1.0.11'
  sha256 '35745a0767e4131efbdcb34459c5a7b44126aa11e73af80310b813bf6efe1bc5'

  url "https://app.openvanilla.org/file/openvanilla/OpenVanilla-Installer-Mac-#{version}.zip"
  name 'OpenVanilla'
  homepage 'https://openvanilla.org/'
  license :mit

  input_method 'OpenVanillaInstaller.app/Contents/Resources/OpenVanilla.app'

  caveats do
    logout
  end
end

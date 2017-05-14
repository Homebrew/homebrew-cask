cask 'openvanilla' do
  version '1.3.3'
  sha256 'f1152b3815f400dcd8eea89a53e88e69fe344c7cbb0fac7613fdfff060469d8a'

  # github.com/openvanilla/openvanilla/ was verified as official when first introduced to the cask
  url "https://github.com/openvanilla/openvanilla/releases/download/#{version}/OpenVanilla-Installer-Mac-#{version}.zip"
  appcast 'https://github.com/openvanilla/openvanilla/releases.atom',
          checkpoint: 'e082310a10496fc25234b8f3ba1256bc33fb9e92f7a86bf8926a1bd721387c41'
  name 'OpenVanilla'
  homepage 'https://openvanilla.org/'

  input_method 'OpenVanillaInstaller.app/Contents/Resources/OpenVanilla.app'

  caveats do
    logout
  end
end

cask 'openvanilla' do
  version '1.1.0'
  sha256 'e8d23d00de5c95b1abb4870be0bf059bba7c332d5259870de8678811c3330cef'

  # github.com/openvanilla/openvanilla/ was verified as official when first introduced to the cask
  url "https://github.com/openvanilla/openvanilla/releases/download/#{version}/OpenVanilla-Installer-Mac-#{version}.zip"
  name 'OpenVanilla'
  homepage 'https://openvanilla.org/'

  input_method 'OpenVanillaInstaller.app/Contents/Resources/OpenVanilla.app'

  caveats do
    logout
  end
end

cask 'openvanilla' do
  version '1.3.0'
  sha256 'f80cf17396ac50a6038f4b190dcba646e75f5517d2e72896f2f627b9072cc2f9'

  # github.com/openvanilla/openvanilla/ was verified as official when first introduced to the cask
  url "https://github.com/openvanilla/openvanilla/releases/download/#{version}/OpenVanilla-Installer-Mac-#{version}.zip"
  appcast 'https://github.com/openvanilla/openvanilla/releases.atom',
          checkpoint: '768cb8fe42c6f1e48bfae16eadc5ef798f789a9e8bb450c284d30356933dfce7'
  name 'OpenVanilla'
  homepage 'https://openvanilla.org/'

  input_method 'OpenVanillaInstaller.app/Contents/Resources/OpenVanilla.app'

  caveats do
    logout
  end
end

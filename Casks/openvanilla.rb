cask 'openvanilla' do
  version '1.3.4'
  sha256 '2fd9ea6779bfd94b7899744a0e30b075667b8d4957232f662d28cb634e05847f'

  # github.com/openvanilla/openvanilla/ was verified as official when first introduced to the cask
  url "https://github.com/openvanilla/openvanilla/releases/download/#{version}/OpenVanilla-Installer-Mac-#{version}.zip"
  appcast 'https://github.com/openvanilla/openvanilla/releases.atom',
          checkpoint: '73df68e023311f6e106d061effe396b2b563c68e57ac39dc7804370f5bea81fb'
  name 'OpenVanilla'
  homepage 'https://openvanilla.org/'

  input_method 'OpenVanillaInstaller.app/Contents/Resources/OpenVanilla.app'

  caveats do
    logout
  end
end

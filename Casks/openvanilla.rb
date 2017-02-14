cask 'openvanilla' do
  version '1.3.2'
  sha256 'b77f4f5b7cecb56901411b7ff1ce246e671b37086119d4a1bb120300ecbb7846'

  # github.com/openvanilla/openvanilla/ was verified as official when first introduced to the cask
  url "https://github.com/openvanilla/openvanilla/releases/download/#{version}/OpenVanilla-Installer-Mac-#{version}.zip"
  appcast 'https://github.com/openvanilla/openvanilla/releases.atom',
          checkpoint: '6bb8a2063c7b7ae5addab4b9a57ae065a22a36684af3a6d36fcb663dadcb8696'
  name 'OpenVanilla'
  homepage 'https://openvanilla.org/'

  input_method 'OpenVanillaInstaller.app/Contents/Resources/OpenVanilla.app'

  caveats do
    logout
  end
end

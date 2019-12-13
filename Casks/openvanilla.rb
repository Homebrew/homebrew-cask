cask 'openvanilla' do
  version '1.5.0,3260'
  sha256 '7c5387f824c27b0f078e7c12ee2593cd410912c2672f766161f99433d2c0e076'

  # github.com/openvanilla/openvanilla was verified as official when first introduced to the cask
  url "https://github.com/openvanilla/openvanilla/releases/download/#{version.before_comma}/OpenVanilla-Installer-Mac-#{version.before_comma}.zip"
  appcast 'https://github.com/openvanilla/openvanilla/releases.atom'
  name 'OpenVanilla'
  homepage 'https://openvanilla.org/'

  container nested: "OpenVanillaInstaller.app/Contents/Resources/NotarizedArchives/OpenVanilla-r#{version.after_comma}.zip"

  input_method 'OpenVanillaInstaller.app/Contents/Resources/OpenVanilla.app'

  caveats do
    logout
  end
end

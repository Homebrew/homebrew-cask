cask 'aquaskk' do
  version '4.4.3'
  sha256 'f9d481126c5b985ca80f74909da0c6c917747a8f391bcc27ec1b82e9b6cd3a00'

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.dmg"
  appcast 'https://github.com/codefirst/aquaskk/releases.atom',
          checkpoint: 'c4f7fd5793801a887b7c65f73472cda663b8d0aa30c33381fabe42518a905493'
  name 'AquaSKK'
  homepage 'https://github.com/codefirst/aquaskk'

  pkg 'AquaSKK.pkg'

  uninstall pkgutil: 'jp.sourceforge.inputmethod.aquaskk.pkg'
end

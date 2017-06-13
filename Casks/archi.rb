cask 'archi' do
  version '4.0.1'
  sha256 'e9878c66975937f23f3ebd3a281785790ae3b32cb9f19a49a8b24787af126a6d'

  url "http://www.archimatetool.com/downloads/release/v#{version.major}/Archi-mac-#{version}.zip"
  appcast 'https://github.com/archimatetool/archi/releases.atom',
          checkpoint: '3c389b77dfe3bc869572814461b948ae00e067f629f0769776219166ba6864a4'
  name 'Archi'
  homepage 'https://www.archimatetool.com/'

  app 'Archi/Archi.app'
end

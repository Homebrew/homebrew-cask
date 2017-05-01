cask 'ascension' do
  version '3.0.0'
  sha256 'b21598b455878b997a08c88ef1c800eef2ad648ca672228db90ece0754d5e492'

  url "https://github.com/ansilove/Ascension/releases/download/v#{version}/Ascension_v#{version}.zip"
  appcast 'https://github.com/ansilove/Ascension/releases.atom',
          checkpoint: 'bb3dfb0c6137e3b3a0ed8f78977f05467dbe03f5af9e0d7c0ae3c641eb3f66e7'
  name 'Ascension'
  homepage 'https://github.com/ansilove/Ascension'

  app 'Ascension.app'
end

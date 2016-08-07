cask 'ascension' do
  version '3.0.0'
  sha256 'b21598b455878b997a08c88ef1c800eef2ad648ca672228db90ece0754d5e492'

  url "https://github.com/ansilove/Ascension/releases/download/v#{version}/Ascension_v#{version}.zip"
  appcast 'https://github.com/ansilove/Ascension/releases.atom',
          checkpoint: '0612470d68579a2a5b5be66d7ce7e0ba9c7c592a144f462da42f00aa463f8c11'
  name 'Ascension'
  homepage 'https://github.com/ansilove/Ascension'
  license :bsd

  app 'Ascension.app'
end

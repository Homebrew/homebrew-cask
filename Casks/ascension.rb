cask 'ascension' do
  version 'v3.0.0'
  sha256 'b21598b455878b997a08c88ef1c800eef2ad648ca672228db90ece0754d5e492'

  url "https://github.com/ansilove/Ascension/releases/download/#{version}/Ascension_#{version}.zip"
  name 'Ascension'
  homepage 'https://github.com/ansilove/Ascension'
  license :bsd

  app 'Ascension.app'
end

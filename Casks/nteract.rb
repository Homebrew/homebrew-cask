cask 'nteract' do
  version '0.13.0'
  sha256 '80bbc59afb68f99d39097331f8ff8bbb719f14e753d8ac4abcf95f4d3f504f36'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end

cask 'kui' do
  version '8.10.0'
  sha256 'c035595d235dda373350d460f789bb1f4043cbb88599d2cfe187179c1c44278a'

  # github.com/IBM/kui was verified as official when first introduced to the cask
  url "https://github.com/IBM/kui/releases/download/v#{version}/Kui-darwin-x64.tar.bz2"
  appcast 'https://github.com/IBM/kui/releases.atom'
  name 'Kui'
  homepage 'https://kui.tools/'

  app 'Kui-darwin-x64/Kui.app'
end

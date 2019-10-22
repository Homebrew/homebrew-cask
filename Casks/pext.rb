cask 'pext' do
  version '0.26'
  sha256 '65748c1360eddb694a6af2793f440db4235b4431fcb00302f395ee209ee9ebe2'

  # github.com/Pext/Pext was verified as official when first introduced to the cask
  url "https://github.com/Pext/Pext/releases/download/v#{version}/Pext-#{version}.dmg"
  appcast 'https://github.com/Pext/Pext/releases.atom'
  name 'Pext'
  homepage 'https://pext.io/'

  app 'Pext.app'
end

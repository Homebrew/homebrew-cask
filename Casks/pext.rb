cask 'pext' do
  version '0.27'
  sha256 '10d9797be8bd9a7aa4430aace8f324dd330bc883617a5a8944ea954a1ed9c176'

  # github.com/Pext/Pext was verified as official when first introduced to the cask
  url "https://github.com/Pext/Pext/releases/download/v#{version}/Pext-#{version}.dmg"
  appcast 'https://github.com/Pext/Pext/releases.atom'
  name 'Pext'
  homepage 'https://pext.io/'

  app 'Pext.app'
end

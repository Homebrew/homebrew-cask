cask 'pext' do
  version '0.24.1'
  sha256 '77335d00ee065313f90cad4cf6de7693df87c4b549b367d5c4b536b0bc9c2bec'

  # github.com/Pext/Pext was verified as official when first introduced to the cask
  url "https://github.com/Pext/Pext/releases/download/v#{version}/Pext-#{version}.dmg"
  appcast 'https://github.com/Pext/Pext/releases.atom'
  name 'Pext'
  homepage 'https://pext.io/'

  app 'Pext.app'
end

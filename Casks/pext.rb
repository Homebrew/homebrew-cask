cask 'pext' do
  version '0.24.0'
  sha256 '96ab3802e5dd80a1524bce0ecc28d0d9557e75bacd7856c107ce09aa2c343562'

  # github.com/Pext/Pext was verified as official when first introduced to the cask
  url "https://github.com/Pext/Pext/releases/download/v#{version}/Pext-#{version}.dmg"
  appcast 'https://github.com/Pext/Pext/releases.atom'
  name 'Pext'
  homepage 'https://pext.io/'

  app 'Pext.app'
end

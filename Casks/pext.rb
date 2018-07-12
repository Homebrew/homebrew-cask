cask 'pext' do
  version '0.17'
  sha256 'f8795983a12f1fe1ad159c6bfd5f8ded92a8a8312ffb149fd56dc8f63a578abd'

  # github.com/Pext/Pext was verified as official when first introduced to the cask
  url "https://github.com/Pext/Pext/releases/download/v#{version}/Pext.dmg"
  appcast 'https://github.com/Pext/Pext/releases.atom'
  name 'Pext'
  homepage 'https://pext.hackerchick.me/'

  app 'Pext.app'
end

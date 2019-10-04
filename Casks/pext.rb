cask 'pext' do
  version '0.25'
  sha256 '8428da4328154a2a9700b581c72b946a581131d48214aac6ed4f5618f721f31e'

  # github.com/Pext/Pext was verified as official when first introduced to the cask
  url "https://github.com/Pext/Pext/releases/download/v#{version}/Pext-#{version}.dmg"
  appcast 'https://github.com/Pext/Pext/releases.atom'
  name 'Pext'
  homepage 'https://pext.io/'

  app 'Pext.app'
end

cask 'pext' do
  version '0.18'
  sha256 '91d3721ca3d041f9e4a6dcb6d5ef826a237b49866741ac43edc413c9d7b8f946'

  # github.com/Pext/Pext was verified as official when first introduced to the cask
  url "https://github.com/Pext/Pext/releases/download/v#{version}/Pext.dmg"
  appcast 'https://github.com/Pext/Pext/releases.atom'
  name 'Pext'
  homepage 'https://pext.hackerchick.me/'

  app 'Pext.app'
end

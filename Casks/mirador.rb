cask 'mirador' do
  version '1.5.1'
  sha256 '011ff609679258a0b5dc3f1ce1f0ad82f0c1c4730ff9d467c49581500cc6fc13'

  # github.com/mirador/mirador was verified as official when first introduced to the cask
  url 'https://github.com/mirador/mirador/archive/latest-macos.zip'
  appcast 'https://github.com/mirador/mirador/releases.atom'
  name 'Mirador'
  homepage 'https://fathom.info/mirador/'

  app 'Mirador.app'
end

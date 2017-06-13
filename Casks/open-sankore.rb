cask 'open-sankore' do
  version '2.5.1'
  sha256 '7b7ada04dc4bf3d47e2ae2ef33b207bde65904d2db4d6d2525951af9bff4f073'

  # cndp.fr/open-sankore was verified as official when first introduced to the cask
  url "http://www.cndp.fr/open-sankore/OpenSankore/Releases/v#{version}/Open-Sankore_MacOSX_#{version}.dmg"
  name 'Open-Sankore'
  homepage 'http://open-sankore.org/'

  app 'Open-Sankore.app'
end

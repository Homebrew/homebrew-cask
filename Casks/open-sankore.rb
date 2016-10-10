cask 'open-sankore' do
  version '2.5.0'
  sha256 '773e563a312b64542b0ca905b290606b46c85372e24e2ab5c807de7933f38828'

  # cndp.fr/open-sankore was verified as official when first introduced to the cask
  url "https://www.cndp.fr/open-sankore/OpenSankore/Releases/v#{version}/Open-Sankore_MacOSX_#{version}.dmg"
  name 'Open-Sankore'
  homepage 'http://open-sankore.org/'

  app 'Open-Sankore.app'
end

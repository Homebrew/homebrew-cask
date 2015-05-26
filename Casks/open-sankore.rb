cask :v1 => 'open-sankore' do
  version '2.5.0'
  sha256 '773e563a312b64542b0ca905b290606b46c85372e24e2ab5c807de7933f38828'

  # cndp.fr is the official download host per the vendor homepage
  url "http://www.cndp.fr/open-sankore/OpenSankore/Releases/v#{version}/Open-Sankore_MacOSX_#{version}.dmg"
  name 'Open-Sankore'
  homepage 'http://open-sankore.org/'
  license :gpl

  app 'Open-Sankore.app'
end

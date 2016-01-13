cask 'flexiglass' do
  version '1.6.1-12795'
  sha256 'e929497301312054866b809fbe64ff06a33ad6bc188e4cb64da980aa6085496f'

  url "http://downloads.nulana.com/flexiglass/Flexiglass-#{version}.zip"
  appcast 'http://downloads.nulana.com/flexiglass/appcast.xml',
          :checkpoint => '02e04a49dad7cf9edafa0369cb110b31fda5316877cbd2551e7011ff036cb519'
  name 'Flexiglass'
  homepage 'http://nulana.com/flexiglass/'
  license :commercial

  depends_on :macos => '>= :snow_leopard'
  depends_on :arch => :intel

  app 'Flexiglass.app'
end

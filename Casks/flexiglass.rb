cask :v1 => 'flexiglass' do
  version '1.6.1-12795'
  sha256 'e929497301312054866b809fbe64ff06a33ad6bc188e4cb64da980aa6085496f'

  url "http://downloads.nulana.com/flexiglass/Flexiglass-#{version}.zip"
  appcast 'http://downloads.nulana.com/flexiglass/appcast.xml',
          :sha256 => '6b788c43781b1ac872c669d37da3bf3919ce2ca9e3e618bb416d4cb8f6430419'
  name 'Flexiglass'
  homepage 'http://nulana.com/flexiglass/'
  license :commercial

  depends_on :macos => '>= :snow_leopard'
  depends_on :arch => :intel

  app 'Flexiglass.app'
end

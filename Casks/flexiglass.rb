cask 'flexiglass' do
  version '1.6.1-12795'
  sha256 'e929497301312054866b809fbe64ff06a33ad6bc188e4cb64da980aa6085496f'

  url "http://downloads.nulana.com/flexiglass/Flexiglass-#{version}.zip"
  appcast 'http://downloads.nulana.com/flexiglass/appcast.xml',
          checkpoint: '9f2f95c38e5d941d943e25e0b4f5b6649005a33818299de43c28d98935152b48'
  name 'Flexiglass'
  homepage 'http://nulana.com/flexiglass/'
  license :commercial

  depends_on macos: '>= :snow_leopard'
  depends_on arch: :intel

  app 'Flexiglass.app'
end

cask 'rodeo' do
  version '2.4.2'
  sha256 '3aea0105c92f53066bd24e07aac28148882f0e7bdc1495e6324886286da12992'

  # github.com/yhat/rodeo was verified as official when first introduced to the cask
  url "https://github.com/yhat/rodeo/releases/download/v#{version}/Rodeo-#{version}.dmg"
  appcast 'https://github.com/yhat/rodeo/releases.atom',
          checkpoint: '661be9585dc69fa30fa3042b78631f52c453a6adcbba083e1b99f142f1d13832'
  name 'Rodeo'
  homepage 'http://rodeo.yhat.com/'

  app 'Rodeo.app'
end

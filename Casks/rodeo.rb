cask 'rodeo' do
  version '2.0.13'
  sha256 'ce94198d783679c587f81a40815471f760d8b1c93ae3de2fb2829f2d68150855'

  # github.com/yhat/rodeo was verified as official when first introduced to the cask
  url "https://github.com/yhat/rodeo/releases/download/v#{version}/Rodeo-#{version}.dmg"
  appcast 'https://github.com/yhat/rodeo/releases.atom',
          checkpoint: '40fe3e4c3cba1046852a13ad05af5dbee585a3f62cb4b53a0f561d66606bc5e6'
  name 'Rodeo'
  homepage 'http://rodeo.yhat.com/'
  license :affero

  app 'Rodeo.app'
end

cask 'black-screen' do
  version '0.2.3'
  sha256 '570f899b2502ad9e3908728e6986f4ff109443350abf12f5d3af972ade85c121'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: '9906bc51d7dc9c1702ffefa09b106121f6652db29785849a06a8857b3e562be5'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'
  license :mit

  app 'Black Screen.app'
end

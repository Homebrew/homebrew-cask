cask 'black-screen' do
  version '0.2.33'
  sha256 '2405179c995ff744c5877ff81a45ca58718bb1176d3ec5d78dcadce6114d925b'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: 'a6f847d4a336df2c5f594a4986fa3bdac04c437720f475bfcb27f73d98b09db8'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'
  license :mit

  app 'Black Screen.app'
end

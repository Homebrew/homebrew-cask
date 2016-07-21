cask 'black-screen' do
  version '0.2.8'
  sha256 '99ce3422a0a2c1659038c5ab4e3c0fb4e2bf7e11ab00b4e7f5ca1fc9d1914a30'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: 'a2c7c987732d2b353ee4c9195291b6b8e9f2963e72a26cb8d6b109416388975c'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'
  license :mit

  app 'Black Screen.app'
end

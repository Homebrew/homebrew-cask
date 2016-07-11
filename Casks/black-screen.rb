cask 'black-screen' do
  version '0.1.31'
  sha256 'a42f269b53427cbc7cf311e9a7d7e9bce8f7c9e2510ad95bc4d8fe2c1217070e'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: '99d53d425df8216aa53d318c5e7ad134d3ea5ff2b4734d60b7975d4a06602818'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'
  license :mit

  app 'Black Screen.app'
end

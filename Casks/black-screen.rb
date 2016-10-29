cask 'black-screen' do
  version '0.2.71'
  sha256 'da11aad8859d0206a7ed4b19a5415004a80787e59b627e3e1af5d65bb46449e1'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: 'bfef122940e6b57ee5ba7dbf5c4cf829f72bb55455fb2ed02dc2750a1918b18e'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'

  app 'Black Screen.app'
end

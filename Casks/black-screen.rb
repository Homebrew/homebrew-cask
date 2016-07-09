cask 'black-screen' do
  version '0.1.6'
  sha256 '47852369cb5e8477d87a1f72817d9f799b22216e3ff53c1a906173d43d2dcb3a'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: '8f309e92199c4bc670357f6b7589a9b88235134ec17931f727583287fa997bcb'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'
  license :mit

  app 'Black Screen.app'
end

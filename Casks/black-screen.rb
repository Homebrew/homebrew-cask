cask 'black-screen' do
  version '0.2.55'
  sha256 '6010cec0721b24482eb31a528e44d638b815b3aa16154e7f114575353b9f840a'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: '41cb95fdccc427dc00d6118a44c969fe8e7992d2555011ab1ad503c0b2c9822a'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'

  app 'Black Screen.app'
end

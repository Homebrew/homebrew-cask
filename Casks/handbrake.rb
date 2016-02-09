cask 'handbrake' do
  version '0.10.3'
  sha256 '5bf327f6d42901668490338c32eab8cc2d4db3e09ea1cb9b8c44573ed8fb5dda'

  url "http://download.handbrake.fr/releases/#{version}/HandBrake-#{version}-MacOSX.6_GUI_x86_64.dmg"
  appcast 'https://handbrake.fr/appcast.x86_64.xml',
          checkpoint: 'fd37c7d6741c19ae69270c1af2c2adb084d66f064e1edabe249e1925eb7cda1f'
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :oss

  auto_updates true

  app 'HandBrake.app'
end

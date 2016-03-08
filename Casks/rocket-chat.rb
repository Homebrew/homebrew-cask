cask 'rocket-chat' do
  version '1.0.0'
  sha256 'dcdaa03ac2d3d9a4ad79a7dd3d05d58bf8cde663848a9bc9bd5006aef9363d05'

  # github.com/RocketChat/Rocket.Chat.Electron was verified as official when first introduced to the cask
  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/v#{version}/rocketchat-#{version}-mac.dmg"
  appcast 'https://github.com/RocketChat/Rocket.Chat.Electron/releases.atom',
          checkpoint: 'dd006d8e5b94acec097c568a93809f39640fe5ff2b5b6a22b4b798f35763aa73'
  name 'Rocket.Chat'
  homepage 'https://rocket.chat/'
  license :mit

  app 'Rocket.Chat.app'
end

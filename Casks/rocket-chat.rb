cask 'rocket-chat' do
  version '1.1.0'
  sha256 'dac6e8974bd34e3dae9d46c9218a2acabf4b685c70077f2ac7605be369f742bf'

  # github.com/RocketChat/Rocket.Chat.Electron was verified as official when first introduced to the cask
  url "https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/v#{version}/rocketchat-v#{version}-darwin-x64.dmg"
  appcast 'https://github.com/RocketChat/Rocket.Chat.Electron/releases.atom',
          checkpoint: '61ba12528b84cea29385b1e9e6f866dc9621a45e86e54e66240bea16fe36aa73'
  name 'Rocket.Chat'
  homepage 'https://rocket.chat/'
  license :mit

  app 'Rocket.Chat.app'
end

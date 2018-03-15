cask 'netron' do
  version '1.6.4'
  sha256 '0b828dc4f305644fb7ffca49f3d9e574916aef87ec8e5050c1c84fc159abd670'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'eef9fcf03b5d1a48196b9a82fc5f1fb2f4d714deae4fce5ffce9026c42f842e0'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

cask 'netron' do
  version '1.0.9'
  sha256 '4a72ff66dc8ee6d7eeb4fdd2ea9b3782520e88c3e5ef31f4baa7fb7554c53b0a'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'dcdfdade43a7f784dbcc7b230277b4ae215a00928ed0fa212f19e0f25bba9fac'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

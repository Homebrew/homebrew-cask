cask 'netron' do
  version '2.7.5'
  sha256 '529102407f7028e3ea28abd8b358b452ecbf1186d0e6c099b4ee2c8fd97d0601'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

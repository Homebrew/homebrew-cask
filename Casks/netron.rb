cask 'netron' do
  version '1.3.5'
  sha256 '03633f6d21a3b5300daea8c43e45ee4a54fc7a259836853fd21fce92c817c850'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '8482496c090863985214bd2ef19fc695200f75e6e5e24a296e54fd4ffd37deae'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

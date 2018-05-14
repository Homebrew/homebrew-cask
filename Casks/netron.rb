cask 'netron' do
  version '1.7.8'
  sha256 '756ff13d0afeb782b1b1c97b052dba2939beaf76f4720e681e1ef1db407299e8'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '3bcf5302a896a6412a8514dd6149db53777f29b7e455baad17455920a9deae4b'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

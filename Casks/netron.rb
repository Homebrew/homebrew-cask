cask 'netron' do
  version '2.0.6'
  sha256 '3ac5fcd07443a0eff7e007e8046ecd0ab48b4ae263a61031133d8bff7a66b5f5'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

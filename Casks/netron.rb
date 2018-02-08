cask 'netron' do
  version '1.4.3'
  sha256 '7ddc4e28ba50d32fb5554006bac7ecdcca240fc6126b48956e222c87e3263a8a'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'bfb3794e66d5103599f832df48c9ebd58b0b3d4b1d374666ed2589cf7b0a2d5e'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

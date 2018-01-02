cask 'netron' do
  version '1.2.4'
  sha256 '510d30a5cee0a6fd294674482411eaeb73c63647ad7fcafc8c5344bee99eb376'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '07c5a52ae7917ffa6bab64cf4a2580c9e943343c768c7cf9f1ec2e0b523b5106'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

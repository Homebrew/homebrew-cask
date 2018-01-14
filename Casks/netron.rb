cask 'netron' do
  version '1.3.4'
  sha256 '9bb8dd34b19c52c69eae351d8f6553809289407c92483e605ca01a9e4e250555'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '41153f2afbbf25014e3dd61c125a381a3bc1737a5c87128087b40c40c9e3d324'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

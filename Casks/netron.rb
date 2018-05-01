cask 'netron' do
  version '1.7.6'
  sha256 '99aaf906b3b4ab807d0d16e7e7c5b10885fa56b0e816a2bb48bc847ebcac04ed'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'ca394bad81f1460f9c4adabb953de46f80b4b3425cc107a576a0ddfb62a23615'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

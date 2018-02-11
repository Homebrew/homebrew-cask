cask 'netron' do
  version '1.4.4'
  sha256 'a9e897683e5ba0d8fd4b1e1a1a7dae14244e2df0976959920e0fb6e1594f0970'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'bdbfabe867d98e64b80683030df585ab47839cbb4c5fbb2966e06b9957b4b8f4'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

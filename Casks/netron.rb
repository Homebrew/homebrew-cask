cask 'netron' do
  version '1.8.3'
  sha256 '15c26347cb16f15ccb3dcd30c97f68d13716aa2bab1afb94b7d5c8538d9755e5'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '04fe44a4e93fef6ca5be62a5d02530e5f7bfff00ebccec1a2b18a68f79593bf7'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

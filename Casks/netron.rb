cask 'netron' do
  version '1.1.5'
  sha256 '43800d78d708ae6bea338bcd40f77048beef6723cb7417510816a2853bea9d28'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '2a7d1adfdc69303749ab1de19341e1a2532f22beb1c386aed2a74db4a66d5e07'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

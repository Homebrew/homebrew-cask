cask 'netron' do
  version '3.1.5'
  sha256 '7ca6c9d7bdbd525edb47c3eebb0a9f715f3c7ab91223548a1d144f55a81fd2e3'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

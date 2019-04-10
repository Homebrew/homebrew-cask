cask 'netron' do
  version '3.0.0'
  sha256 '574ae845fbbd68cf88522cdbbcc0d04ff9e208a0b3eb45f7dfca0bac8fa16cc1'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

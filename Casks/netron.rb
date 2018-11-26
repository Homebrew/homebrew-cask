cask 'netron' do
  version '2.6.6'
  sha256 '832ee2ea0bb350f4743598e167e5303134f521d42fdd5090a00a7bb51c5f96f1'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

cask 'netron' do
  version '4.0.9'
  sha256 'd5f6262bbb595ecf372b572ac7af5782ed90010734b1e7bde8fa2bc99d6ed920'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

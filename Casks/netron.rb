cask 'netron' do
  version '3.8.9'
  sha256 'cc8a1d5e7a1990589abab3a8e6d2a29aa620a9db3a9cad7c269c9026c7956775'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

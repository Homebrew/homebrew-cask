cask 'netron' do
  version '3.5.0'
  sha256 '7b450b7d67151dc0e1f94a8bff351f9db04d623357b51d3af118902cfe4daa13'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

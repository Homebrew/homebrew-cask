cask 'netron' do
  version '4.3.8'
  sha256 '0af56f15bd297f28e46785bb23ad987787cdf5cb2eaf1a4cfa3bb6fd1b80a5fe'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

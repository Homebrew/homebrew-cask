cask 'netron' do
  version '4.1.0'
  sha256 '219d10f85ec0d0d25753e817f4ebc451486a617de4246c7cb183430cafd9d962'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

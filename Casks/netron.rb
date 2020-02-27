cask 'netron' do
  version '3.9.3'
  sha256 'd33e790606acfa05579f390fc586acc26848096882a0e8b3ff197b294413c9ed'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

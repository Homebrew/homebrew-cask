cask 'netron' do
  version '3.6.5'
  sha256 'f81fc7fdb0db75809ddad0a15ca1af6028f920c967a0af6edecf83b7906710dd'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

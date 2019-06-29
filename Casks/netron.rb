cask 'netron' do
  version '3.2.2'
  sha256 'ee957ee62c8c79b2938df1f787752841d71c7c97125d48033912d9a67a3f3ac3'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

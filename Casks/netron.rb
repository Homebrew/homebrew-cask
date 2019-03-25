cask 'netron' do
  version '2.9.6'
  sha256 'db42acb43b1664702000487081d971f9f6f7a5345580c2e39c7daf31d1d82518'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

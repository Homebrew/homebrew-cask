cask 'netron' do
  version '2.5.9'
  sha256 '8ef83d7a1d9a585d3e51386e1e8f17e2230831a3ffe64f34e3d4ed78d0db91a0'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

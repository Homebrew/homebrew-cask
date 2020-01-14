cask 'netron' do
  version '3.7.7'
  sha256 'e96db62151a9f6a8a4e128cd0460d70a9577b4b7d9a842419b406d8dea062470'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

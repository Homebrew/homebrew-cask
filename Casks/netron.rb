cask 'netron' do
  version '2.3.6'
  sha256 'b326feed845fcb891400544bf6810bb951530fda402a127325afded2b1cbf008'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

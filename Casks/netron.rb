cask 'netron' do
  version '1.9.2'
  sha256 'fac2b8475c1646f4e499606bbd762a08c18cd8c7fd63a550010e42dc912b0ded'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

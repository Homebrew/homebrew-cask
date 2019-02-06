cask 'netron' do
  version '2.8.6'
  sha256 '03718d99071c34500c43466d64d302970a51f64a41db1299df58e8e9e0e1b710'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

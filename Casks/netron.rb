cask 'netron' do
  version '1.6.8'
  sha256 'eca50ecda6ddbace4213aebcc2c163074c03d8a76e8e2c9247273208f29ccf4e'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '59b420fc0a54253678dc3573d0d3ff9a3c5de824d25578515e009749ebdfadd5'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

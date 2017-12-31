cask 'netron' do
  version '1.2.3'
  sha256 'e65b164672d052b25a1a14cd1cef261bde0c53a9b45576dd7fabeec4ee346f7c'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '2c968d38d3ee0a535840123f366978714a8c1e61e682f586c451f91282daa600'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

cask 'netron' do
  version '1.1.0'
  sha256 '5d39ace56ada2949feec974d1c59c4f54ca90e102dd956a7dffdff3747bbac73'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '938c1eab2cbc153ba44000d285eb0bd349e3eb0a7708622caaa8b1816a8bc98c'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

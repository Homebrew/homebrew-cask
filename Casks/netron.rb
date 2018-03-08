cask 'netron' do
  version '1.6.1'
  sha256 '281e7296aa34d81eeafc94c81e91b6ed838f950f787b61feb26219fd7ea10d17'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '151f85b5819c0d5416ff7e6ba5dff2828a872ce4f147aa7f011f0d7d1d5ef25d'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

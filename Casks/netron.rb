cask 'netron' do
  version '1.5.0'
  sha256 '2da952300b39d2ead951932c724b120b1bf6d7c1c23661c2a1b593aed7271948'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '8ac121eeb1b9ad71c319e5e782d299121399a82c5c54e659126e08402a5386b1'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

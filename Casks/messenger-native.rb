cask 'messenger-native' do
  version '1.0.0'
  sha256 '72d730197b91963a5804adf09cbb2a4df3d9374f0ec922035e34587d0e2c073a'

  url "https://github.com/gaston23/MessengerNative/releases/download/#{version}/Mac64_MessengerNative#{version}.zip"
  appcast 'https://github.com/gaston23/MessengerNative/releases.atom',
          checkpoint: '136867cf6bf76c6c9466526ab1d48f358ae72913ce60629e3a7e6aff1c58392f'
  name 'Messenger Native'
  homepage 'https://github.com/gaston23/MessengerNative'

  app 'osx64/Messenger Native.app'
end

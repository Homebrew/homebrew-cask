cask :v1 => 'messenger-native' do
  version '1.0.0'
  sha256 '72d730197b91963a5804adf09cbb2a4df3d9374f0ec922035e34587d0e2c073a'

  url "https://github.com/imton/MessengerNative/releases/download/#{version}/Mac64_MessengerNative#{version}.zip"
  appcast 'https://github.com/imton/MessengerNative/releases.atom'
  name 'Messenger Native'
  homepage 'https://github.com/imton/MessengerNative'
  license :mit

  app 'osx64/Messenger Native.app'
end

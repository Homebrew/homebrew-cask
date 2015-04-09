cask :v1 => 'messenger-native' do
  version '1.0.0'
  sha256 '72d730197b91963a5804adf09cbb2a4df3d9374f0ec922035e34587d0e2c073a'

  url "https://github.com/imton/MessengerNative/releases/download/1.0.0/Mac64_MessengerNative1.0.0.zip"
  homepage 'https://github.com/imton/MessengerNative'
  license :mit

  app "osx64/Messenger Native.app"
end

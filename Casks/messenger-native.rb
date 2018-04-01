cask 'messenger-native' do
  version '1.0.0'
  sha256 '72d730197b91963a5804adf09cbb2a4df3d9374f0ec922035e34587d0e2c073a'

  url "https://github.com/gastonmorixe/MessengerNative/releases/download/#{version}/Mac64_MessengerNative#{version}.zip"
  appcast 'https://github.com/gastonmorixe/MessengerNative/releases.atom',
          checkpoint: '6f1eafbdb5f331235770ee0df2293d2b129238a72643bc4f6599485fcd049bf5'
  name 'Messenger Native'
  homepage 'https://github.com/gastonmorixe/MessengerNative'

  app 'osx64/Messenger Native.app'
end

cask 'netron' do
  version '1.2.5'
  sha256 '120011f0ae601808a5340bcaceb737f0a8843a9ca4ba7122832c4d39a2bc483b'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '348f2270e1e9b2517cc2da4156b16f7b138a14f78dcc6f412e237a5c97ca22a0'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

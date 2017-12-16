cask 'netron' do
  version '1.1.2'
  sha256 '6fe40a030853f0a48a125b49194e7c37805ae12d616d8e55956788e509acd908'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'cb58de8ee905a849df80ba7d1a8aabe04cc52aa5378a99030056696ac347a99e'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

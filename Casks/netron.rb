cask 'netron' do
  version '4.4.2'
  sha256 '054d799778985e2cc911e4f058443b207af63d2a86c436250523a7f3f56669ca'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

cask 'netron' do
  version '2.4.0'
  sha256 'aa23124f88299eb5b125feb33554bd13ff53ea601db9c92a582048010dfe018b'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

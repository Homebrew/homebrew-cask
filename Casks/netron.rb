cask 'netron' do
  version '4.1.7'
  sha256 'f7b8d1305a96a5e4ebb29eab55bd1a71d77f312643e7bd868b7873c1fb8e54aa'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

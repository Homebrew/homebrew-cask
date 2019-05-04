cask 'netron' do
  version '3.0.4'
  sha256 'e96e2b08b67c19bcf4b19f713aa8f62a83ce7fddf78ae5da4c29a228a1348014'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

cask 'netron' do
  version '2.1.3'
  sha256 '0c75ca3c80d9618188b1fded4ff99f8ee5089ec831b1dc385a169a2cb06a35cf'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

cask 'netron' do
  version '2.5.0'
  sha256 '1441fb990de9e3110895dbbc6de01c4e743038d2d5093bd8dc83bb4c3cbaa6e1'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

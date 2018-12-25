cask 'netron' do
  version '2.7.7'
  sha256 'dc3cbe5694c1da958e7f7a12a4616400bca89ba93eb1d376df0ffb581f84eb2c'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

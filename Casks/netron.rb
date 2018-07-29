cask 'netron' do
  version '1.9.3'
  sha256 '12c600d7b5a396caedc130c6573cf6fd03607a576883e30ce1cd496019212ba1'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

cask 'netron' do
  version '2.5.6'
  sha256 '67d438ac4680c6009f96580048206a165ae649d004e88e0c814d2147cc78a4f2'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

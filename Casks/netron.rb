cask 'netron' do
  version '2.4.9'
  sha256 '2a191205b7f269720ea3f88acd8aaffb24d2b2c328e5778c44334b22f70b5ca8'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

cask 'netron' do
  version '2.2.9'
  sha256 '9680d385ebd0bf61bacbb3681dde2d1a2fb22eb6b3f0f578d48768fbe09daec7'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

cask 'netron' do
  version '2.6.3'
  sha256 'f5cea9d4fe04c88e61ef6ac8ee9e3fb775fbfdbef2f83e1e59b743a646b1d889'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

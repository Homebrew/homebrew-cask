cask 'netron' do
  version '3.6.1'
  sha256 '43b4bac2f9fe397967e6fecaae1cc56a6f9c18a2d1d3ed563f8d4160680b152e'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

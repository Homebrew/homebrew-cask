cask 'netron' do
  version '3.5.6'
  sha256 'f11f5156ad6333bafd24edfea2ade3dbe8a06b17a5e3304207fabadbf8d270cd'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

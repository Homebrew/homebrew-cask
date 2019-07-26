cask 'gpsdump' do
  version '0.53'
  sha256 '16b63a1c3fe8c0150c55eb8503056362d28c39cbc5c968a5acce9ca39ce77dad'

  url "http://www.gpsdump.no/GpsDumpMac#{version.no_dots}.zip"
  appcast 'http://www.gpsdump.no/body_mac.htm'
  name 'GpsDump'
  homepage 'http://www.gpsdump.no/body_mac.htm'

  app 'GpsDump.app'
end

cask 'gpsdump' do
  version '0.50'
  sha256 '410a95350d28e2806be5e8c7f7697a66685ddc55045af540876f24656ccecba7'

  url "http://www.gpsdump.no/GpsDumpMac#{version.no_dots}.zip"
  appcast 'http://www.gpsdump.no/body_mac.htm'
  name 'GpsDump'
  homepage 'http://www.gpsdump.no/body_mac.htm'

  app 'GpsDump.app'
end

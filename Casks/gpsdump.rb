cask 'gpsdump' do
  version '0.51'
  sha256 '6b39b9e49172fd439cb88d10f9bbb202f502354e4592b8968c08acab8be7955c'

  url "http://www.gpsdump.no/GpsDumpMac#{version.no_dots}.zip"
  appcast 'http://www.gpsdump.no/body_mac.htm'
  name 'GpsDump'
  homepage 'http://www.gpsdump.no/body_mac.htm'

  app 'GpsDump.app'
end

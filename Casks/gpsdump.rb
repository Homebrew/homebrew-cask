cask 'gpsdump' do
  version '0.45'
  sha256 '0faa512c6a6edd753e028c585c26d2422b98c57e870084e3c8a5538f76ebdedc'

  url "http://www.gpsdump.no/GpsDumpMac#{version.no_dots}.zip"
  appcast 'http://www.gpsdump.no/body_mac.htm'
  name 'GpsDump'
  homepage 'http://www.gpsdump.no/body_mac.htm'

  app 'GpsDump.app'
end

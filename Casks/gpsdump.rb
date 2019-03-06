cask 'gpsdump' do
  version '0.49'
  sha256 '05ad25e276cbbc9ce90e261805c8880796f1e5910725d8fa964c186f10e03d0f'

  url "http://www.gpsdump.no/GpsDumpMac#{version.no_dots}.zip"
  appcast 'http://www.gpsdump.no/body_mac.htm'
  name 'GpsDump'
  homepage 'http://www.gpsdump.no/body_mac.htm'

  app 'GpsDump.app'
end

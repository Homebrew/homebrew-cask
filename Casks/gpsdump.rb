cask 'gpsdump' do
  version '0.54'
  sha256 '4959fddc3b4b0fa775a90050d795f898e2e9ae3335759c4307c9dcef3c57c065'

  url "http://www.gpsdump.no/GpsDumpMac#{version.no_dots}.zip"
  appcast 'http://www.gpsdump.no/body_mac.htm'
  name 'GpsDump'
  homepage 'http://www.gpsdump.no/body_mac.htm'

  app 'GpsDump.app'
end

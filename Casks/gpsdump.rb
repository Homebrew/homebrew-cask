cask 'gpsdump' do
  version '0.49'
  sha256 '79fba744497f6739ed8db5f0b49f145b7ea0f0f8ab6fa21bdb0478b77924e831'

  url "http://www.gpsdump.no/GpsDumpMac#{version.no_dots}.zip"
  appcast 'http://www.gpsdump.no/body_mac.htm'
  name 'GpsDump'
  homepage 'http://www.gpsdump.no/body_mac.htm'

  app 'GpsDump.app'
end

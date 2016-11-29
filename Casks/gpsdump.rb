cask 'gpsdump' do
  version '0.4.1'
  sha256 '6ded0b866d982dcc0a3ce984a3971fd38126e97622d154a81008b430cb4e8268'

  url "https://www.gpsdump.no/GpsDumpMac#{version.no_dots}.zip"
  name 'GpsDump'
  homepage 'https://www.gpsdump.no/body_mac.htm'

  app 'GpsDump.app'
end

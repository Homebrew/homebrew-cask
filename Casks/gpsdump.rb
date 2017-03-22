cask 'gpsdump' do
  version '0.4.1'
  sha256 '6ded0b866d982dcc0a3ce984a3971fd38126e97622d154a81008b430cb4e8268'

  url "http://www.gpsdump.no/GpsDumpMac#{version.no_dots}.zip"
  appcast 'http://www.gpsdump.no/body_mac.htm',
          checkpoint: '9dba21d29744776475d690f4c91770751d739aed55d2006c09dc4e65c16699f4'
  name 'GpsDump'
  homepage 'http://www.gpsdump.no/body_mac.htm'

  app 'GpsDump.app'
end

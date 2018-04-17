cask 'gpsdump' do
  version '0.43'
  sha256 '1ee89de779d874e13e8c5a7d66696801ba5b2dca391297977d4bd9cb1194cbc2'

  url "http://www.gpsdump.no/GpsDumpMac#{version.no_dots}.zip"
  appcast 'http://www.gpsdump.no/body_mac.htm',
          checkpoint: '3b1836292c7d1d738389101b99ee6a096c726601896d8618846034f5594826b1'
  name 'GpsDump'
  homepage 'http://www.gpsdump.no/body_mac.htm'

  app 'GpsDump.app'
end

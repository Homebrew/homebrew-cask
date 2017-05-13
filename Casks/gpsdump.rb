cask 'gpsdump' do
  version '0.4.2'
  sha256 'b6778e44b7af4f2ac93f66c742b6d4d0170870ba2ab7579a485e035ee261a6d3'

  url "http://www.gpsdump.no/GpsDumpMac#{version.no_dots}.zip"
  appcast 'http://www.gpsdump.no/body_mac.htm',
          checkpoint: 'f800479a9918e3ef84f1b9099713eab2677a43296cc53cbbe65ca247556c9d34'
  name 'GpsDump'
  homepage 'http://www.gpsdump.no/body_mac.htm'

  app 'GpsDump.app'
end

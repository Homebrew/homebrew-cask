cask 'ip-scanner' do
  version '3.83'
  sha256 '226118686c40dc38f7a81496e4464cb98b231c0e035c7159fb12f48efd65649e'

  url "https://10base-t.com/downloads/IPScanner_#{version}.zip"
  appcast 'https://updates.10base-t.com/appcasts/ipscanner_appcast_sandbox.xml'
  name 'IP Scanner'
  homepage 'https://10base-t.com/macintosh-software/ip-scanner/'

  app 'IP Scanner.app'
end

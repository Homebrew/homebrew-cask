cask 'ip-scanner' do
  version '3.66'
  sha256 'cc0766d58175c5ed6b1ebfa6bcd462b0c85a9ac6456abf7201b046b984c056d9'

  url "http://10base-t.com/downloads/IPScanner_#{version}.zip"
  appcast 'https://updates.10base-t.com/appcasts/ipscanner_appcast_sandbox.xml'
  name 'IP Scanner'
  homepage 'http://10base-t.com/macintosh-software/ip-scanner/'

  depends_on macos: '>= :lion'

  app 'IP Scanner.app'
end

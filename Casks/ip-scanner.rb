cask 'ip-scanner' do
  version '3.70'
  sha256 'face2f2520041fefafa31ac551fbc449276706983de710071fd50087e957d50b'

  url "https://10base-t.com/downloads/IPScanner_#{version}.zip"
  appcast 'https://updates.10base-t.com/appcasts/ipscanner_appcast_sandbox.xml'
  name 'IP Scanner'
  homepage 'https://10base-t.com/macintosh-software/ip-scanner/'

  app 'IP Scanner.app'
end

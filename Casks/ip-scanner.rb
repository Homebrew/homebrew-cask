cask 'ip-scanner' do
  version '3.68'
  sha256 'f725cd523deb2aaff808ac256e61552733318a3fb0302718f9dced2818a8d7ab'

  url "https://10base-t.com/downloads/IPScanner_#{version}.zip"
  appcast 'https://updates.10base-t.com/appcasts/ipscanner_appcast_sandbox.xml'
  name 'IP Scanner'
  homepage 'https://10base-t.com/macintosh-software/ip-scanner/'

  depends_on macos: '>= :lion'

  app 'IP Scanner.app'
end

cask 'ip-scanner' do
  version '3.80'
  sha256 '0e9f5e2f4436952708a988d2df4618375374b01146e2c3c55883d88f68e5169c'

  url "https://10base-t.com/downloads/IPScanner_#{version}.zip"
  appcast 'https://updates.10base-t.com/appcasts/ipscanner_appcast_sandbox.xml'
  name 'IP Scanner'
  homepage 'https://10base-t.com/macintosh-software/ip-scanner/'

  app 'IP Scanner.app'
end

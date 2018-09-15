cask 'cisco-webex-meetings' do
  version '33.4.4-5'
  sha256 '51832c38ccd7cf40c3ec99cd41e37f7be8a3ad7c0aa75ad7f4f1b6958f24bdd1'

  url "https://akamaicdn.webex.com/client/WBXclient-#{version}/mac/intel/webexapp.dmg"
  name 'Webex Meetings'
  homepage 'https://www.webex.com/products/meetings/index.html'

  pkg 'Cisco Webex Meetings.pkg'

  uninstall pkgutil: 'mc.mac.webex.com'
end

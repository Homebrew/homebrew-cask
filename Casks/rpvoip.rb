cask 'rpvoip' do
  version :latest
  sha256 :no_check

  url 'https://www.intercall.com/downloads/rpvoip_mac.pkg'
  name 'RPVoIP'
  homepage 'https://www.intercall.com/'

  pkg 'rpvoip_mac.pkg'

  uninstall pkgutil: 'com.intercall.webexVoipClient.RPVoIP.pkg'

  zap trash: [
               '~/Library/Application Support/RPVoIP',
               '~/Library/Preferences/com.intercall.rpvoip.mac.plist',
             ]
end

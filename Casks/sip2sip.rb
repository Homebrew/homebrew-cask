cask 'sip2sip' do
  version '4.3.3'
  sha256 '9c700a24d5c4c482e5d304eadcc2a3f6233914bc828c866e9df9ab915b23a6f0'

  # blink.sipthor.net was verified as official when first introduced to the cask
  url 'https://blink.sipthor.net/download-sip2sip.phtml'
  appcast 'https://blink.sipthor.net/SIP2SIPAppcast.xml'
  name 'SIP2SIP'
  homepage 'http://sip2sip.info/'

  app 'SIP2SIP.app'

  zap trash: [
               '~/Library/Application Support/SIP2SIP',
               '~/Library/Caches/com.agprojects.SIP2SIP',
               '~/Library/Preferences/com.agprojects.SIP2SIP.plist',
             ]
end

cask 'owasp-zap' do
  version '2.8.0'
  sha256 '8fe3c30411524a05d662c2a2d1e2762a43291db7c39b23963b7de0f259ab122c'

  # github.com/zaproxy/zaproxy was verified as official when first introduced to the cask
  url "https://github.com/zaproxy/zaproxy/releases/download/v#{version}/ZAP_#{version}.dmg"
  appcast 'https://github.com/zaproxy/zaproxy/releases.atom'
  name 'OWASP Zed Attack Proxy'
  name 'ZAP'
  homepage 'https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project'

  app 'OWASP ZAP.app'

  zap trash: [
               '~/Library/Application Support/ZAP',
               '~/Library/Preferences/org.zaproxy.zap.plist',
             ]
end

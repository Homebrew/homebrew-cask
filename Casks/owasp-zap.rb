cask 'owasp-zap' do
  version '2.7.0'
  sha256 '6d163801edf2367506d47f9560d7610aba55a8149f09e2ab34000b597c09e2d0'

  # github.com/zaproxy/zaproxy was verified as official when first introduced to the cask
  url "https://github.com/zaproxy/zaproxy/releases/download/#{version}/ZAP_#{version}.dmg"
  appcast 'https://github.com/zaproxy/zaproxy/releases.atom',
          checkpoint: '1111d3882fbdee9e15b275e2ab3e08b0330eda4c0338190e4754d5856a6051e3'
  name 'OWASP Zed Attack Proxy'
  name 'ZAP'
  homepage 'https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project'

  app 'OWASP ZAP.app'

  zap trash: [
               '~/Library/Application Support/ZAP',
               '~/Library/Preferences/org.zaproxy.zap.plist',
             ]
end

cask 'owasp-zap' do
  version '2.6.0'
  sha256 '7133593b91d0d7925436adc79370b654cb1d4d642a9bb85cc3880bfaf2683b87'

  # github.com/zaproxy/zaproxy was verified as official when first introduced to the cask
  url "https://github.com/zaproxy/zaproxy/releases/download/#{version}/ZAP_#{version}_macos.dmg"
  appcast 'https://github.com/zaproxy/zaproxy/releases.atom',
          checkpoint: 'ddd4c4d3195ccbb86f98fab20661f09383e79ee9e9407cfb154acaeddeb81108'
  name 'OWASP Zed Attack Proxy'
  name 'ZAP'
  homepage 'https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project'

  app 'OWASP ZAP.app'
end

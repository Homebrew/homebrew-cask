cask 'owasp-zap' do
  version '2.6.0'
  sha256 '7133593b91d0d7925436adc79370b654cb1d4d642a9bb85cc3880bfaf2683b87'

  # github.com/zaproxy/zaproxy was verified as official when first introduced to the cask
  url "https://github.com/zaproxy/zaproxy/releases/download/#{version}/ZAP_#{version.dots_to_underscores}_macos.dmg"
  appcast 'https://github.com/zaproxy/zaproxy/releases.atom',
          checkpoint: '7b84ad46090667a859271d665f06266f2397582390c78a92ce3b974c0229e7f4'
  name 'OWASP Zed Attack Proxy'
  name 'ZAP'
  homepage 'https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project'

  app 'OWASP ZAP.app'
end

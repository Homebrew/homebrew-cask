cask 'owasp-zap' do
  version '2.5.0'
  sha256 '56f99b77c57cdb1e84a9404b589c1d443d52877ee456c02cc7eae25105c18ae5'

  # github.com/zaproxy/zaproxy was verified as official when first introduced to the cask
  url "https://github.com/zaproxy/zaproxy/releases/download/#{version}/ZAP_#{version}_Mac_OS_X.dmg"
  name 'OWASP Zed Attack Proxy'
  name 'ZAP'
  homepage 'https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project'
  license :apache

  app 'OWASP ZAP.app'
end

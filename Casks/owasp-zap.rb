cask 'owasp-zap' do
  version '2.4.3'
  sha256 '581e1746384263a01a8d4def828d291e707fca3788d9302c1e57edb457db18ae'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/zaproxy/zaproxy/releases/download/#{version}/ZAP_#{version}_MAC_OS_X.dmg"
  name 'OWASP Zed Attack Proxy'
  name 'ZAP'
  homepage 'https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project'
  license :apache

  app 'OWASP ZAP.app'
end

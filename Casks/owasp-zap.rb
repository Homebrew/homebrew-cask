cask :v1 => 'owasp-zap' do
  version '2.4.1'
  sha256 '98c9cab401dd95c021ee32cf4030aa63a64f08a82c6fe0d2493663e3c6e1c5a3'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/zaproxy/zaproxy/releases/download/#{version}/ZAP_#{version}_MAC_OS_X.dmg"
  name 'OWASP Zed Attack Proxy'
  name 'OWASP ZAP'
  name 'ZAP'
  homepage 'https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project'
  license :apache
  tags :vendor => 'OWASP'

  app 'OWASP ZAP.app'
end

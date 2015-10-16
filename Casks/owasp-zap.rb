cask :v1 => 'owasp-zap' do
  version '2.4.2'
  sha256 'b6d8f3a9632ab99bae4097084df74efd2321c22182aff3a119dd1e69ecc69a63'

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

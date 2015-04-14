cask :v1 => 'owasp-zap' do
  version '2.4.0'
  sha256 'd8e296cc09908f7df9970ac6f701191bf7ccdff628d95194196a58689f8186be'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/zaproxy/ZAP_#{version}_Mac_OS_X.dmg"
  name 'OWASP Zed Attack Proxy'
  name 'OWASP ZAP'
  name 'ZAP'
  homepage 'https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project'
  license :apache
  tags :vendor => 'OWASP'

  app 'OWASP ZAP.app'
end

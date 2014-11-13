cask :v1 => 'owasp-zap' do
  version '2.2.2'
  sha256 'b83f9808bbda4b9c34c7aba8d62e49c12337457b5ffed423c2ad08c8bcd048fb'

  url "https://zaproxy.googlecode.com/files/ZAP_#{version}_Mac_OS_X.zip"
  homepage 'https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project'
  license :oss

  app 'OWASP ZAP.app'
end

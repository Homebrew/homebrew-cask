cask :v1 => 'owasp-zap' do
  version '2.3.1'
  sha256 '417d9208ea3df826f3641131f0f8c2c475cf56f7926f51be1a6c8b155c06b1c9'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/zaproxy/ZAP_#{version}_Mac_OS_X.zip"
  homepage 'https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project'
  license :oss

  app 'OWASP ZAP.app'
end

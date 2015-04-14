cask :v1 => 'soapui' do
  version '5.1.3'
  sha256 '57239d061b2042a5200791071dcdd73b4b00799f3a07c98db0287c126cb79950'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/soapui/#{version}/SoapUI-#{version}.dmg"
  name 'SoapUI'
  homepage 'http://www.soapui.org/'
  license :gratis

  installer :manual => "SoapUI #{version} Installer.app"
end

cask 'eagle' do
  version '7.5.0'
  sha256 '1abad61ebd8dd42dca64c289dccb38f39c2fe9c67d3313d53ec31e6bad74870b'

  # cadsoft.de is the official download host per the vendor homepage
  url "http://web.cadsoft.de/ftp/eagle/program/#{version.sub(%r{\.\d+$},'')}/eagle-mac64-#{version}.zip"
  name 'EAGLE'
  homepage 'http://www.cadsoftusa.com/'
  license :freemium
  tags :vendor => 'CadSoft'

  pkg "eagle-mac64-#{version}.pkg"

  uninstall :pkgutil => 'com.CadSoftComputerGmbH.EAGLE',
            :delete => "/Applications/EAGLE-#{version}"
end

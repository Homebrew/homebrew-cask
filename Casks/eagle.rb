cask :v1 => 'eagle' do
  version '7.3.0'
  sha256 '5dcda474ac96c65d5948e85f0f638706d5f3da105b29c796f076ad79047bcbf4'

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

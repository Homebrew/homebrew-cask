cask :v1 => 'eagle' do
  version '7.4.0'
  sha256 '11aa7b6fc7bf9fce2e88f0cfca15b821404e42b03e9a8529c9c0b5c2781e9133'

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

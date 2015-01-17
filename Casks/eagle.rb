cask :v1 => 'eagle' do
  version '7.2.0'
  sha256 '9cae311072d8be5a16631ce08d9e0653bdc21e336cc90df2463d7df35521ff2a'

  # cadsoft.de is the official download host per the vendor homepage
  url "http://web.cadsoft.de/ftp/eagle/program/#{version.sub(%r{\.\d+$},'')}/eagle-mac-#{version}.zip"
  name 'EAGLE'
  homepage 'http://www.cadsoftusa.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'CadSoft'

  pkg "eagle-#{version}.pkg"

  uninstall :pkgutil => 'com.CadSoftComputerGmbH.EAGLE',
            :delete => "/Applications/EAGLE-#{version}"
end

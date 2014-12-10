cask :v1 => 'eagle' do
  version '7.2.0'
  sha256 '9cae311072d8be5a16631ce08d9e0653bdc21e336cc90df2463d7df35521ff2a'

  url "ftp://ftp.cadsoft.de/eagle/program/#{version.gsub(/\.\d$/, '')}/eagle-mac-#{version}.zip"
  homepage 'http://www.cadsoftusa.com/'
  license :unknown    # todo: improve this machine-generated value

  pkg "eagle-#{version}.pkg"

  uninstall :pkgutil => 'com.CadSoftComputerGmbH.EAGLE',
            :delete => "/Applications/EAGLE-#{version}"
end

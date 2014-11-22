cask :v1 => 'eagle' do
  version '7.1.0'
  sha256 '95a721bae751ea210fad390c9b414ec5e317332133072f08247b552e125ab2d5'

  url "ftp://ftp.cadsoft.de/eagle/program/#{version.gsub(/\.\d$/, '')}/eagle-mac-#{version}.zip"
  homepage 'http://www.cadsoftusa.com/'
  license :unknown

  pkg "eagle-#{version}.pkg"

  uninstall :pkgutil => 'com.CadSoftComputerGmbH.EAGLE',
            :delete => "/Applications/EAGLE-#{version}"
end

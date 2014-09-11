class Eagle < Cask
  version '7.1.0'
  sha256 '95a721bae751ea210fad390c9b414ec5e317332133072f08247b552e125ab2d5'

  url "ftp://ftp.cadsoft.de/eagle/program/#{version.gsub(/\.\d$/, '')}/eagle-mac-#{version}.zip"
  homepage 'http://www.cadsoftusa.com/'

  pkg "eagle-#{version}.pkg"
  uninstall :pkgutil => 'com.CadSoftComputerGmbH.EAGLE',
            :files => "/Applications/EAGLE-#{version}"
end

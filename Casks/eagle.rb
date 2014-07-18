class Eagle < Cask
  version '6.6.0'
  sha256 '91b37c4d223d22a46837d76507bbd1c77675ebe1bce5650c4b82a29266496e7a'

  url "ftp://ftp.cadsoft.de/eagle/program/#{version.gsub(/\.\d$/, '')}/eagle-mac-#{version}.zip"
  homepage 'http://www.cadsoftusa.com/'

  install "eagle-#{version}.pkg"
  uninstall :pkgutil => 'com.CadSoftComputerGmbH.EAGLE',
            :files => "/Applications/EAGLE-#{version}"
end

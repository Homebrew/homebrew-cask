class Eagle < Cask
  version '6.6.0'
  sha256 '91b37c4d223d22a46837d76507bbd1c77675ebe1bce5650c4b82a29266496e7a'

  url 'ftp://ftp.cadsoft.de/eagle/program/6.6/eagle-mac-6.6.0.zip'
  homepage 'http://www.cadsoftusa.com/'

  install 'eagle-6.6.0.pkg'
  uninstall :pkgutil => 'com.CadSoftComputerGmbH.EAGLE',
            :files => '/Applications/EAGLE-6.6.0'
end

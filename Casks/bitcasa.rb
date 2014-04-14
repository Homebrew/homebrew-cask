class Bitcasa < Cask
  url 'https://d1kbf262vwnlmm.cloudfront.net/Bitcasa_1.4.1384.dmg'
  homepage 'https://www.bitcasa.com'
  version '1.4.1384'
  sha256 '029913848e80e01e4331c67ccf3beb1fa4e290dec2ee18c5c611feca0e685a5c'
  install 'InstallBitcasa.pkg'
  uninstall :pkgutil => 'com.bitcasa.AutoLaunch|com.bitcasa.Bitcasa'
end

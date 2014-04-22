class Bitcasa < Cask
  url 'https://d1kbf262vwnlmm.cloudfront.net/Bitcasa_1.4.1387.dmg'
  homepage 'https://www.bitcasa.com'
  version '1.4.1387'
  sha256 'c7aa7af89285d986da8bec38decb25f4c94acc5eb446aa5b74684232805757b2'
  install 'InstallBitcasa.pkg'
  uninstall :pkgutil => 'com.bitcasa.AutoLaunch|com.bitcasa.Bitcasa'
end

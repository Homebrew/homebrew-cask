class Bitcasa < Cask
  url 'https://d1kbf262vwnlmm.cloudfront.net/Bitcasa_1.4.1324.dmg'
  homepage 'https://www.bitcasa.com'
  version '1.4.1324'
  sha1 '0d48dfac8e0413c1c0d04be756298d4924bd84fc'
  install 'InstallBitcasa.pkg'
  uninstall :pkgutil => 'com.bitcasa.AutoLaunch|com.bitcasa.Bitcasa'
end

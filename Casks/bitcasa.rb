class Bitcasa < Cask
  url 'https://d1kbf262vwnlmm.cloudfront.net/Bitcasa_1.4.1324.dmg'
  homepage 'https://www.bitcasa.com'
  version '1.4.1324'
  sha256 '6faf2e07f0c5f815a64ffaa9dcf6f949ba7124ca7ab1ca944e721457e1473812'
  install 'InstallBitcasa.pkg'
  uninstall :pkgutil => 'com.bitcasa.AutoLaunch|com.bitcasa.Bitcasa'
end

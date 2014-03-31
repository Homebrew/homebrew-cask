class Mixlr < Cask
  url 'http://cdn.mixlr.com/Mixlr_beta_latest.pkg'
  homepage 'http://mixlr.com'
  version 'latest'
  no_checksum
  install 'Mixlr_beta_latest.pkg'
  uninstall :pkgutil => 'com.mixlr.Mixlr'
end

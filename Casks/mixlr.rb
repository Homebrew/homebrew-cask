class Mixlr < Cask
  url 'http://cdn.mixlr.com/Mixlr_beta_latest.pkg'
  homepage 'http://mixlr.com'
  version 'latest'
  sha256 :no_check
  install 'Mixlr_beta_latest.pkg'
  uninstall :pkgutil => 'com.mixlr.Mixlr'
end

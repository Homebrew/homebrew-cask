cask :v1 => 'mixlr' do
  version :latest
  sha256 :no_check

  url 'http://cdn.mixlr.com/Mixlr_beta_latest.pkg'
  homepage 'http://mixlr.com'
  license :unknown

  pkg 'Mixlr_beta_latest.pkg'

  uninstall :pkgutil => 'com.mixlr.Mixlr'
end

cask :v1 => 'mixlr' do
  version :latest
  sha256 :no_check

  url 'http://cdn.mixlr.com/Mixlr_beta_latest.pkg'
  homepage 'http://mixlr.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Mixlr_beta_latest.pkg'

  uninstall :pkgutil => 'com.mixlr.Mixlr'
end

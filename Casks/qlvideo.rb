cask :v1 => 'qlvideo' do
  version '1.7.1'
  sha256 'cb0d417b13fad20484233c68ec7cf5c84d9a2a1fb74e31e67fed161b7c84e1c5'

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.gsub('.', '')}/QLVideo_#{version.gsub('.', '')}.pkg"
  homepage 'https://github.com/Marginal/QLVideo'
  license :gpl

  pkg "QLVideo_#{version.gsub('.', '')}.pkg"

  uninstall :pkgutil => 'uk.org.marginal.qlvideo'
end

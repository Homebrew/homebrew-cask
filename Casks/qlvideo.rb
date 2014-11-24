cask :v1 => 'qlvideo' do
  version '1.7.0'
  sha256 'a942ad6046636be852495ebed66c2c91ebfe647e5a6052e3f43f94b4edac2ba0'

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.gsub('.', '')}/QLVideo_#{version.gsub('.', '')}.pkg"
  homepage 'https://github.com/Marginal/QLVideo'
  license :gpl

  pkg "QLVideo_#{version.gsub('.', '')}.pkg"

  uninstall :pkgutil => 'uk.org.marginal.qlvideo'
end

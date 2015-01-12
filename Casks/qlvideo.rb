cask :v1 => 'qlvideo' do
  version '1.73'
  sha256 '616e298c74a7d64b2c5af273c376ec98dafa317ebdd7b52c928d39dde2405756'

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.gsub('.', '')}/QLVideo_#{version.gsub('.', '')}.pkg"
  name 'QuickLook Video'
  homepage 'https://github.com/Marginal/QLVideo'
  license :gpl

  pkg "QLVideo_#{version.gsub('.', '')}.pkg"

  uninstall :pkgutil => 'uk.org.marginal.qlvideo'
end

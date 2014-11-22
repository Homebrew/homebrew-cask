cask :v1 => 'qlvideo' do
  version '1.5.0'
  sha256 '48edc2259fd554f536aa4a99ffac6389f7b17c5ce8a0c8e0075d934a074ca430'

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.gsub('.', '')}/QLVideo_#{version.gsub('.', '')}.pkg"
  homepage 'https://github.com/Marginal/QLVideo'
  license :gpl

  pkg "QLVideo_#{version.gsub('.', '')}.pkg"

  uninstall :pkgutil => 'uk.org.marginal.qlvideo'
end

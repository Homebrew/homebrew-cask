cask :v1 => 'qlvideo' do
  version '1.84'
  sha256 '5f055f2e152e352217350712ed483f11e48a4966f49d30d42591c8cc7342c90a'

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.gsub('.', '')}/QLVideo_#{version.gsub('.', '')}.pkg"
  appcast 'https://github.com/Marginal/QLVideo/releases.atom'
  name 'QuickLook Video'
  homepage 'https://github.com/Marginal/QLVideo'
  license :gpl

  pkg "QLVideo_#{version.gsub('.', '')}.pkg"

  uninstall :pkgutil => 'uk.org.marginal.qlvideo'
end

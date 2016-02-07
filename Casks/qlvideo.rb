cask 'qlvideo' do
  version '1.84'
  sha256 '5f055f2e152e352217350712ed483f11e48a4966f49d30d42591c8cc7342c90a'

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.delete('.')}/QLVideo_#{version.delete('.')}.pkg"
  appcast 'https://github.com/Marginal/QLVideo/releases.atom',
          checkpoint: 'c199d34c99e519d672963a4de75f75a7b1a0cc12333f21382e09c4297670737f'
  name 'QuickLook Video'
  homepage 'https://github.com/Marginal/QLVideo'
  license :gpl

  pkg "QLVideo_#{version.delete('.')}.pkg"

  uninstall pkgutil: 'uk.org.marginal.qlvideo'
end

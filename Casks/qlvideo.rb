cask 'qlvideo' do
  version '1.86'
  sha256 '62dc1e1870a3d939fbbd2b75632fbc96cd408a7e99fba75d9ac4b2d66abf857e'

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.delete('.')}/QLVideo_#{version.delete('.')}.pkg"
  appcast 'https://github.com/Marginal/QLVideo/releases.atom',
          checkpoint: '48a93dd1fbc6e44b588225e3e9208d3edf44f37a6cda773f19a87d24e1416e41'
  name 'QuickLook Video'
  homepage 'https://github.com/Marginal/QLVideo'
  license :gpl

  pkg "QLVideo_#{version.delete('.')}.pkg"

  uninstall pkgutil: 'uk.org.marginal.qlvideo'
end

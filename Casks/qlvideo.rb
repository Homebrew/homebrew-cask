cask 'qlvideo' do
  version '1.87'
  sha256 '0f21d994715fa409a858b5f04a76708975b4109dd9ac4e820dbccb7caaf61ded'

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.delete('.')}/QLVideo_#{version.delete('.')}.pkg"
  appcast 'https://github.com/Marginal/QLVideo/releases.atom',
          checkpoint: '713bd661578004751e39a156591fe651e8494f44247e8a9fd31b4a882c98e7ee'
  name 'QuickLook Video'
  homepage 'https://github.com/Marginal/QLVideo'
  license :gpl

  pkg "QLVideo_#{version.delete('.')}.pkg"

  uninstall pkgutil: 'uk.org.marginal.qlvideo'
end

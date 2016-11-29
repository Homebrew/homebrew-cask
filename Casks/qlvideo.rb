cask 'qlvideo' do
  version '1.87'
  sha256 '0f21d994715fa409a858b5f04a76708975b4109dd9ac4e820dbccb7caaf61ded'

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.no_dots}/QLVideo_#{version.no_dots}.pkg"
  appcast 'https://github.com/Marginal/QLVideo/releases.atom',
          checkpoint: 'ea20ff8a5722e2875766d1d469ec5dea161fbf5cfcf3c15169fdf4c1b6a519ee'
  name 'QuickLook Video'
  homepage 'https://github.com/Marginal/QLVideo'

  pkg "QLVideo_#{version.no_dots}.pkg"

  uninstall pkgutil: 'uk.org.marginal.qlvideo'
end

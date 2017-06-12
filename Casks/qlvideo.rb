cask 'qlvideo' do
  version '1.88'
  sha256 '7c59d0ae79a64bbe0ffe233df474d765a7682614ee8339c19bae49e1f6856316'

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.no_dots}/QLVideo_#{version.no_dots}.pkg"
  appcast 'https://github.com/Marginal/QLVideo/releases.atom',
          checkpoint: 'a9013818ec62665be6f6a1a6d398d7e931492f0f6ac06a3f0ff8d3d872e3c8b0'
  name 'QuickLook Video'
  homepage 'https://github.com/Marginal/QLVideo'

  pkg "QLVideo_#{version.no_dots}.pkg"

  uninstall pkgutil: 'uk.org.marginal.qlvideo'
end

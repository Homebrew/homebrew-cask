cask 'nosleep' do
  version '1.4.0'
  sha256 '29e7f771970dce41936372687a5160700e2208357ef1ce37d81ac95c9188efe8'

  # github.com/integralpro/nosleep was verified as official when first introduced to the cask
  url "https://github.com/integralpro/nosleep/releases/download/v#{version}/NoSleep-#{version}.dmg"
  appcast 'https://github.com/integralpro/nosleep/releases.atom',
          checkpoint: '1eaf1f3d98aa20ecf03d10f96c4558a916651c46138d80cf86b5f8afe56c5b43'
  name 'NoSleep'
  homepage 'https://integralpro.github.io/nosleep/'

  pkg 'NoSleep.pkg'

  uninstall script:  'Uninstall.command',
            pkgutil: 'com.protech.pkg.NoSleep'
end

cask 'lrtimelapse' do
  version '4.7.5'
  sha256 'dde02d27b0bbc9e75868c878e6511a9af676624261c93728ebdff8bc62928313'

  url "https://lrtimelapse.com/files/lrtimelapse-#{version.dots_to_hyphens}-mac/"
  name 'LRTimelapse'
  homepage 'https://lrtimelapse.com/'

  pkg "LRTimelapse #{version} Installer.pkg"

  uninstall script: 'Uninstall LRTimelapse.command'
end

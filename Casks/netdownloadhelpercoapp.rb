cask 'netdownloadhelpercoapp' do
  version '1.4.0'
  sha256 'e7e1cf0ece226bc725545b5283c6bc1359f9c2bbc9827f31bdafcfa81d98f3c3'

  # mi-g/vdhcoapp was verified as official when first introduced to the cask
  url "https://github.com/mi-g/vdhcoapp/releases/download/v#{version}/net.downloadhelper.coapp-#{version}.pkg"
  appcast 'https://github.com/mi-g/vdhcoapp/releases.atom'
  name 'Video DownloadHelper Companion App'
  homepage 'https://www.downloadhelper.net/install-coapp'

  pkg "net.downloadhelper.coapp-#{version}.pkg"

  uninstall pkgutil: 'net.downloadhelper.coapp'
end

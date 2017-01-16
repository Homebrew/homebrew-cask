cask 'digikam' do
  version '5.4.0-01'
  sha256 '623cb17c89475e22bedcbaec5c6b60c7736da3bab20af136fecbc20fe2821406'

  # kde.org/stable/digikam was verified as official when first introduced to the cask
  url "http://download.kde.org/stable/digikam/digiKam-#{version}-MacOS-x86-64.pkg"
  appcast 'http://download.kde.org/stable/digikam/',
          checkpoint: '91f7b3385c269f671bd1f3a7b825ffa33df049f3cb57feabb418dca936962043'
  name 'digiKam'
  homepage 'https://www.digikam.org/'

  pkg "digikam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam'
end

cask 'qlvideo' do
  version '1.92'
  sha256 '41d5263bcc52a612b8194cdd6880e4f0613adb6337f9d2e0015487388c8a3def'

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.no_dots}/QLVideo_#{version.no_dots}.pkg"
  appcast 'https://github.com/Marginal/QLVideo/releases.atom'
  name 'QuickLook Video'
  homepage 'https://github.com/Marginal/QLVideo'

  pkg "QLVideo_#{version.no_dots}.pkg"

  uninstall pkgutil:   'uk.org.marginal.qlvideo',
            launchctl: 'uk.org.marginal.qlvideo.mdimporter'
end

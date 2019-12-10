cask 'camtwist' do
  version '3.4.3'
  sha256 'e1187d52a264d24e24c719e61daabf4453112af98a5b90bce9734282e2b05131'

  url "http://camtwiststudio.com/beta/CamTwist_#{version}.dmg"
  appcast 'http://camtwiststudio.com/download/'
  name 'CamTwist'
  homepage 'http://camtwiststudio.com/'

  pkg 'CamTwist.pkg'

  uninstall script:    { executable: 'Manual Install/CamTwist/uninstall.command' },
            pkgutil:   'com.allocinit.camtwist.*',
            launchctl: 'com.allocinit.camtwist.dal'
end

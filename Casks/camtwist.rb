cask 'camtwist' do
  version '3.4.2'
  sha256 '236cecad3047c727672c07fbe5191cd2a430d3d46f6f407ada2f1a7a7af3d977'

  url "http://camtwiststudio.com/beta/CamTwist_#{version}.dmg"
  name 'CamTwist'
  homepage 'http://camtwiststudio.com/'

  pkg 'CamTwist.pkg'

  uninstall script:    { executable: 'Manual Install/CamTwist/uninstall.command' },
            pkgutil:   'com.allocinit.camtwist.*',
            launchctl: 'com.allocinit.camtwist.dal'
end

cask 'camtwist' do
  version '3.4.2'
  sha256 'd8bb71ceef31303cd53a0641bec5347608a40c53ad9b4ffa50c7cf261547da8c'

  url "http://camtwiststudio.com/beta/CamTwist_#{version}.dmg"
  name 'CamTwist'
  homepage 'http://camtwiststudio.com/'

  pkg 'CamTwist.pkg'

  uninstall script:    { executable: 'Manual Install/CamTwist/uninstall.command' },
            pkgutil:   'com.allocinit.camtwist.*',
            launchctl: 'com.allocinit.camtwist.dal'
end

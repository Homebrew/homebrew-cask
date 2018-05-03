cask 'camtwist' do
  version '3.4'
  sha256 '9411e0b2fb76df4adaf952499b876c30698f409ce7d19416ed238fba194eed8f'

  url "http://camtwiststudio.com/beta/CamTwist_#{version}.dmg"
  name 'CamTwist'
  homepage 'http://camtwiststudio.com/'

  pkg 'CamTwist.pkg'

  uninstall script:    { executable: 'Manual Install/CamTwist/uninstall.command' },
            pkgutil:   'com.allocinit.camtwist.*',
            launchctl: 'com.allocinit.camtwist.dal'
end

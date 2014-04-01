class Camtwist < Cask
  url 'http://camtwiststudio.com/release/CamTwist_2.5.dmg'
  homepage 'http://camtwiststudio.com/'
  version '2.5'
  no_checksum
  install 'CamTwist.pkg'
  uninstall :script => { :executable => 'Manual Install/CamTwist/uninstall.command' }
end

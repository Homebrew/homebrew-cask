class Camtwist < Cask
  version '2.5'
  sha256 'd81576971abe2bc1a8b1e3d8c894cfe18f0442c49a6a242a6ab25b247de01fec'

  url 'http://camtwiststudio.com/release/CamTwist_2.5.dmg'
  homepage 'http://camtwiststudio.com/'

  install 'CamTwist.pkg'
  uninstall :script => { :executable => 'Manual Install/CamTwist/uninstall.command' }
end

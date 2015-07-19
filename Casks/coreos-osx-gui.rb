cask :v1 => 'coreos-osx-gui' do
  version '0.9.2'
  sha256 'abc90b6954e684688e5169aacf7846312a8fd434f5644b122fc333ef1b2eb2c1'

  url "https://github.com/rimusz/coreos-osx-gui/releases/download/v#{version}/CoreOS_GUI_v#{version}.dmg"
  appcast 'https://github.com/rimusz/coreos-osx-gui/releases.atom'
  name 'CoreOS GUI'
  name 'CoreOS-Vagrant GUI'
  homepage 'https://github.com/rimusz/coreos-osx-gui'
  license :oss

  app 'CoreOS GUI.app'
end

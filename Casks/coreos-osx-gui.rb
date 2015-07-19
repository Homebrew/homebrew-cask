cask :v1 => 'coreos-osx-gui' do
  version '0.8.4'
  sha256 'acef0c3090f4c249c95d8cfb281da65787133b2e64ec4ae8d1925bdb2cc2a3cb'

  url "https://github.com/rimusz/coreos-osx-gui/releases/download/v#{version}/CoreOS_GUI_v#{version}.dmg"
  appcast 'https://github.com/rimusz/coreos-osx-gui/releases.atom'
  name 'CoreOS GUI'
  name 'CoreOS-Vagrant GUI'
  homepage 'https://github.com/rimusz/coreos-osx-gui'
  license :oss

  app 'CoreOS GUI.app'
end

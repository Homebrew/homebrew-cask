cask :v1 => 'coreos-osx-gui' do
  version '0.9.3'
  sha256 'd65fbb3d8f48a6525cc21eb52b1cd20b1a572f66c9b03440b311d8950edddf77'

  url "https://github.com/rimusz/coreos-osx-gui/releases/download/v#{version}/CoreOS_GUI_v#{version}.dmg"
  appcast 'https://github.com/rimusz/coreos-osx-gui/releases.atom'
  name 'CoreOS GUI'
  name 'CoreOS-Vagrant GUI'
  homepage 'https://github.com/rimusz/coreos-osx-gui'
  license :oss

  app 'CoreOS GUI.app'
end

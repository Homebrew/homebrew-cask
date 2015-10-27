cask :v1 => 'coreos-osx-gui' do
  version '1.0.2'
  sha256 '8ecab2abe4958836b1c3f9cb1ad8bfa7215e3a4a1623f49b0183c520a625be5a'

  url "https://github.com/rimusz/coreos-osx-gui/releases/download/v#{version}/CoreOS_GUI_v#{version}.dmg"
  appcast 'https://github.com/rimusz/coreos-osx-gui/releases.atom'
  name 'CoreOS GUI'
  name 'CoreOS-Vagrant GUI'
  homepage 'https://github.com/rimusz/coreos-osx-gui'
  license :oss

  app 'CoreOS GUI.app'
end

cask :v1 => 'coreos-osx-gui' do
  version '1.0.1'
  sha256 '59952019f2ceb58a5cbcf6d12ec31cce65f9e9871fa89bff7a000ee1bb2b9587'

  url "https://github.com/rimusz/coreos-osx-gui/releases/download/v#{version}/CoreOS_GUI_v#{version}.dmg"
  appcast 'https://github.com/rimusz/coreos-osx-gui/releases.atom'
  name 'CoreOS GUI'
  name 'CoreOS-Vagrant GUI'
  homepage 'https://github.com/rimusz/coreos-osx-gui'
  license :oss

  app 'CoreOS GUI.app'
end

cask :v1 => 'coreos-osx-gui' do
  version '0.9.4'
  sha256 'c306dd7b7233adaaac242a7da416b2f7186324349e792c946452be9ed1ad5c21'

  url "https://github.com/rimusz/coreos-osx-gui/releases/download/v#{version}/CoreOS_GUI_v#{version}.dmg"
  appcast 'https://github.com/rimusz/coreos-osx-gui/releases.atom'
  name 'CoreOS GUI'
  name 'CoreOS-Vagrant GUI'
  homepage 'https://github.com/rimusz/coreos-osx-gui'
  license :oss

  app 'CoreOS GUI.app'
end

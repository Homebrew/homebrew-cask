cask :v1 => 'coreos-osx-gui' do
  version '0.9.5'
  sha256 'd9f01eeb7442f42ba13ea56d12c3dcfad3a478d6375d6d65feb08adb4af07306'

  url "https://github.com/rimusz/coreos-osx-gui/releases/download/v#{version}/CoreOS_GUI_v#{version}.dmg"
  appcast 'https://github.com/rimusz/coreos-osx-gui/releases.atom'
  name 'CoreOS GUI'
  name 'CoreOS-Vagrant GUI'
  homepage 'https://github.com/rimusz/coreos-osx-gui'
  license :oss

  app 'CoreOS GUI.app'
end

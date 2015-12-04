cask :v1 => 'coreos-osx-gui' do
  version '1.0.9'
  sha256 '7e53fc1c5c8e1ae47199548f87455a602cbe424525fd0c0afab2a2d791957da8'

  url "https://github.com/rimusz/coreos-osx/releases/download/v#{version}/CoreOS_GUI_v#{version}.dmg"
  appcast 'https://github.com/rimusz/coreos-osx/releases.atom',
          :sha256 => '614c5bffc95a843d601a24899d16d58ad9578d7676c6c014cde229dc71813669'
  name 'CoreOS GUI'
  name 'CoreOS-Vagrant GUI'
  homepage 'https://github.com/rimusz/coreos-osx'
  license :oss

  app 'CoreOS GUI.app'
end
